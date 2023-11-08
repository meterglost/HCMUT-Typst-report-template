#import "config.typ": *

#set document(author: authors)
#set page(paper: "a4")

#let padding = rect(width: 20mm, height: 100%, fill: luma(90%))
#let header = text(style: "italic", subject)

#set page(
    margin: {
        if (print == false) {
            (x: 25mm, y: 25mm)
        } else if (print == "oneside") {
            (right: 15mm, left: 35mm, y: 25mm)
        } else if (print == "twoside") {
            (inside: 15mm, outside: 35mm, y: 25mm)
        }
    },
    background: {
        if (print == "oneside") {
            locate(loc => place(left, padding))
        } else if (print == "twoside") {
            locate(loc => place(if calc.odd(loc.page()) { right } else { left }, padding))
        }
    },
    header: {
        // if (print == "oneside") {
        //     locate(loc => align(right, header))
        // } else if (print == "twoside") {
        //     locate(loc => align(if calc.odd(loc.page()) { left } else { right }, header))
        // }
        line(length: 100%)
    },
    footer: {
        line(length: 100%)
        locate(loc => align(center, [ Page #counter(page).at(loc).first() / #counter(page).final(loc).first() ]))
    }
)

#set text(font: "IBM Plex Serif", size: 10pt)
#show raw: set text(font: "JetBrains Mono")
#show link: set text(fill: blue)
#set par(justify: true)

#include "template/titlepage.typ"

#include "content/main.typ"

#if print == "twoside" {
    set page(header: {}, footer: {})
    pagebreak()
    pagebreak(weak: true, to: "odd")
}
