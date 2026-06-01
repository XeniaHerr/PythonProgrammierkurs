
#let description( format : it => emph(it), body) = {
    set terms(hanging-indent: 2.5em)
set terms(indent: 0em)

show terms: it => {

    let content-to-text(x) = {
        if type(x) == str {
            x
        }
        else if type(x) == content {
            if x.has("text") {
                x.text}
                else if x.has("children") {
                    x.children.map(i => content-to-text(i)).join("")}
        }}

    
  pad(
    left: it.indent + it.hanging-indent,
    stack(
      ..it.children.map(item => {
          h(-it.hanging-indent)

          let c = content-to-text(item.term)

        // Term styling:
          text(weight: "light")[#format(c)]

        it.separator
        item.description
      }),
      spacing: if it.tight {
        par.leading
      } else if it.spacing == auto {
        1.2em
      } else {
        it.spacing
      },
    ),
  )
}
body

}



#let Quiz(body) = {
    let number = context counter(heading).get().at(0)

    [=== Quiz #number ]
    set enum(numbering: "a)")
    body
}
