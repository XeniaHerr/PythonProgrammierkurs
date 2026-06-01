#let Fachschaft = [InfoMathPhys]

#import "@preview/zebraw:0.6.3": *

#show: zebraw
#set document(author: "Xenia Herr", description: "Python Programmierkurs der Fachschaft " + Fachschaft)


#set page(paper: "a4")

#let title = "Programmiervorkurs"
#let subtitle = "Fachschaft " + Fachschaft
#show heading.where(level: 2) : set text(size: 22pt, style: "italic", weight: "light")
#show heading.where(level: 2) : it => [ #counter(heading).step() #pagebreak()  Lektion #counter(heading).display(): #it.body #move(dy: -22pt, line(length: 100%)) #linebreak() ] 

#show heading.where(level: 1) : set text(size: 22pt, style: "italic", weight: "light")
#show heading.where(level: 1) : it => [   #pagebreak() #set align(center+ horizon)
    #text(size: 34pt, style: "italic", weight: "light")[Kapitel: #counter(heading.where(level: 1)).display() #it.body ] #counter(heading.where(level: 1)).step()
]



//TITLEPAGE
#[
    #set align(center)
    #image("Assets/SadEmoji.jpg")  //TODO: Platzhalter entfernen
    
//#set align(center)
    #text(size: 36pt, weight: "bold")[#title]

#v(2cm)

    #text(size: 24pt, style: "italic")[#subtitle]
    #v(1fr)
    #datetime.today().display("[month repr:long] [day], [year]")
]

#pagebreak()

#include "vorwort.typ"


= Intro


=  Unix artige Betriebssysteme


#include "Lektionen/shell.typ"


#include "Lektionen/manpages.typ"

== NixOs Package management

== Tiling Window Manager


=  Python

== Numpy


// #show raw.where(block: true): it => {
//     for i, text in it.text.split("\n") {
//     }

// }

#show raw.where(block: true): it => { set par(justify: false); grid(
  columns: (100%, 100%),
  column-gutter: -100%,
    block(width: 100%, inset: 0em, for (i, line) in it.text.split("\n").filter( it => it != "").enumerate() {
    box(width: 0pt, align(right, str(i + 1) + h(1em)))
    hide(line)
    linebreak()
  }),
    //  block(radius: 1em, fill: luma(246), width: 100%, inset: 1em, it),
    it
)}

#let codesnippet(path, name) = {
    [#set align(center)
        #text(gray, style: "italic")[
            #name]]
    
    rect(stroke: gray, width: 100%)[
        #raw(lang: "Python", read(path), block: true)]
}

//#codesnippet("Code/helloworld.py", "helloworld.py")

#zebraw(raw(lang: "Python", read("Code/helloworld.py"), block: true))
