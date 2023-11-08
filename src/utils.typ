#let dotfill(len: 1fr) = {
    box(width: len, repeat("." + h(1.5pt)))
}

#let alt(s1, s2) = {
    if (str(s1) != "") { s1 } else { s2 }
}

#let multilang(dict: dictionary) = {
    import "config.typ": config
    dict.at(config.lang)
}

#let mailto(mail: str) = link("mailto:" + mail, mail)
