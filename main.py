from bs4 import BeautifulSoup
import requests
import sys
from typing import Optional
from dataclasses import dataclass
import shutil
import subprocess


@dataclass
class Chapter:
    title: str
    content: str
    images: list[str]


def print_err(msg: str) -> None:
    print(f"error: {msg}", file=sys.stderr)


# retrieves pages from chapter_link, cleans it up and returns it as a string
def get_chapter(chapter_link: str) -> Optional[Chapter]:
    req = requests.get(chapter_link)
    if not req.ok:
        print_err(str(req.content))
        return None

    soup = BeautifulSoup(req.text, features="html.parser")

    page_content = soup.select_one("div.content")
    if page_content is None:
        print_err("no content was found on this page")
        return None

    # remove navigation links from page
    if (mainnav := page_content.select_one("div.mainnav")) is not None:
        mainnav.decompose()

    if (botnav := page_content.select_one("div.botnav")) is not None:
        botnav.decompose()

    # remove pointless anchors from page
    for anchor in page_content.select("a[name]"):
        if "href" not in anchor.attrs:
            anchor.decompose()

    # determine chapter title
    title = ""
    if (title_tag := page_content.select_one("h1")) is not None:
        title = title_tag.string or ""
        # uses h3 to fit the style used by the book
        title_tag.name = "h3"

    # get absolute image paths
    images: list[str] = []
    for tag in page_content.select("img"):
        if "src" in tag.attrs:
            image_name = tag.attrs["tppabs"].rsplit("/", 1)[-1]
            # change link in tag so it can be generated properly by typst
            tag.attrs["src"] = image_name
            images.append(tag.attrs["tppabs"])

    return Chapter(title=title, content=str(page_content), images=images)


def convert_html_to_typst(html: str) -> str:
    typst_output = subprocess.run(
        ["pandoc", "-f", "html", "-t", "typst"],
        input=html,
        text=True,
        stdout=subprocess.PIPE,
    ).stdout

    return str(typst_output)


def download_chapter_images(chapter: Chapter) -> None:
    for image in chapter.images:
        image_name = image.rsplit("/", 1)[-1]

        resp = requests.get(image)
        if not resp.ok:
            print_err(str(resp.content))
            return

        with open(image_name, "wb") as img_file:
            img_file.write(resp.content)


def main():
    if len(sys.argv) < 2:
        print_err("link to website chapter was not provided.")
        return

    chapter_link = sys.argv[1]

    try:
        chapter_path = sys.argv[2]
    except IndexError:
        chapter_path = "out.typst"

    if shutil.which("pandoc") is None:
        print_err("pandoc is not installed and it's a required dependency.")
        return

    chapter = get_chapter(chapter_link)
    if chapter is None:
        return

    download_chapter_images(chapter)

    typst_doc = convert_html_to_typst(chapter.content)
    with open(chapter_path, "w") as file:
        file.write(typst_doc)


if __name__ == "__main__":
    main()
