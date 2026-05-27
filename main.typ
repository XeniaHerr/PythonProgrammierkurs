#let Fachschaft = [InfoMathPhys]


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



#[
    #set align(center)
    #image("Assets/SadEmoji.jpg")  //TODO: Platzhalter entfernen
    
#set align(center)
    #text(size: 36pt, weight: "bold")[#title]

#v(2cm)

    #text(size: 24pt, style: "italic")[#subtitle]
    #v(1fr)
    #datetime.today().display("[month repr:long] [day], [year]")
]

#pagebreak()

= Intro
Hello World




=  Unix artige Betriebssysteme

== NixOs Package management

== Tiling Window Manager


=  Python

== Numpy


#raw(lang: "Python", read("Code/helloworld.py"))
  
