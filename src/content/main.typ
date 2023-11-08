#import "../config.typ": *

#if print == "twoside" {
    set page(header: {}, footer: {})
    pagebreak(weak: true, to: "even")
}

#counter(page).update(1)

#lorem(254)
#pagebreak()
#lorem(254)
