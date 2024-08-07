#let radius_size = 1em

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
  #pad(rest: 2em)[
    #set align(center)

    #rect(radius: radius_size, stroke: 1.2pt)[
      #pad(rest: 1em)[
        #text(size: 1.2em)[*Review*]

        #set list(marker: [--])
        #align(left)[#body]
      ]
    ]
  ]
]

#let boxed_text(body) = [
  #align(center)[
    #rect(inset: 10pt, radius: radius_size)[    
      #body
    ]
  ]
]
