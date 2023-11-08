#import "../config.typ": *
#import "../utils.typ": dotfill

#if print == "twoside" {
    set page(header: {}, footer: {})
    pagebreak(weak: true, to: "even")
}

#set page(header: {}, footer: {})
#set align(center)

#text(size: 14.4pt, weight: "bold", upper(university))

#text(upper(faculty))

#v(64pt)
#image("logo.png", height: 5cm, fit: "contain")
#v(64pt)

#text(size: 12pt, weight: "bold", upper(subject))

#v(16pt)
#line(length: 100%)
#pad(x: 10%, y: 8pt, text(size: 14.4pt, weight: "bold", style: "italic", upper(project)))
#line(length: 100%)
#v(16pt)

#set align(left)

#box(width: 25%, "Group:")
#box(width: 75%, group)

#box(width: 25%, baseline: 100%, "Instructor(s):")
#box(width: 75%, baseline: 100%, instructors.join("\n"))

#box(width: 25%, baseline: 100%, "Implementer(s):")
#box(width: 75%, baseline: 100%, implementers.join("\n"))

#set align(center + bottom)

#text([#location, #date])
