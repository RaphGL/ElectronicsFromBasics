#set document(
  title: [Electronics From Basics],
  author: "Rafael Lopes",
  keywords: ("Electronics", "Electricity"),
)

#set page(numbering: "1")

#set par(justify: true)

#set text(
  font: "Barlow",
  kerning: true, 
  lang: "en",
  ligatures: true,
)

#set heading(
 numbering: "1.1" 
)

#show heading.where(level: 1): head => [
  #set text(size: 2.5em)
  #align(center)[
    #block(head.body)
  ]
]

#show heading.where(level: 2): head => [
  #set align(center)
  #pad(y: 2em)[
    #head
  ]
]

#show image: img => [
  #align(center)[
    #img
  ]
]

#show table: tbl => [
  #align(center)[
    #tbl
  ]
]

#outline(indent: auto,)
#pagebreak()

#include "DC/dc.typ"
