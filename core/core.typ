#let volume_title(title: "", description: "") = [
  #layout(size => [
    #block(width: size.width, height: size.height)[
      #align(center + horizon)[
        = #title

        #description
      ]
    ]
  ])
]

// todo rename everywhere to text_figure
#let voltage_listing(body, description: "") = [
  #align(center)[
    #box[
      #align(left)[#body]
    ]

    #if description.len() != "" [
      #description
    ]
  ] 
]

// a box that contains a list of points made in the lesson
// the box already contains a review title
#let review(body) = [
  #pad(x: 2em, y: 2em)[
    #rect(radius: 1em)[
      #pad(rest: 1em)[
        #align(center)[
          #heading(level: 2, numbering: none, outlined: false)[Review]
        ]

        #linebreak()
        #set list(marker: [--])
        #body
      ]
    ]
  ]
]
