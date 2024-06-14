#set document(
  title: [Electronics From Basics],
  author: "Rafael Lopes",
  keywords: ("Electronics", "Electricity"),
)

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

#show heading.where(level: 1): contents => [
  #align(center)[
    #contents
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
