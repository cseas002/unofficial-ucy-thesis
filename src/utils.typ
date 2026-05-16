#import "@preview/linguify:0.5.0": linguify

#let lang-db = toml("./lang.toml")

#let t = key => linguify(key, from: lang-db)

#let tl(key, lang) = lang-db.lang.at(lang).at(key)

/// Read a field from a `localized-info` entry, falling back to a `lang.toml` key.
#let localized-field(info, lang, key, default-key) = {
  info.at(key, default: tl(default-key, lang))
}

/// Set once by `ucy-thesis` from `primary-lang`; read via `primary-t` / heading helpers.
#let ucy-lang = state("ucy-lang", "en")

#let primary-t(key) = context {
  tl(key, ucy-lang.get())
}

#let extract-name(person) = {
  person.at("first-name") + " " + person.at("last-names")
}

#let join-names(names) = {
  names.join(", ", last: t("separator-last"))
}

#let author-names(authors) = authors.map(extract-name)

#let advisor-label = advisors => {
  if advisors.len() == 1 {
    t("advisor")
  } else {
    t("supervisor") + "s"
  }
}

#let resolve-logo(logo: "general", logo-image: none) = {
  if logo-image != none {
    if type(logo-image) == str {
      image(logo-image)
    } else {
      logo-image
    }
  } else if logo == "general" {
    image("assets/ucy-general-logo.svg")
  } else if logo == "cs" {
    image("assets/ucy-cs-logo.jpg")
  } else if logo == "general-text" {
    image("assets/ucy-general-logo-text.jpg")
  } else {
    panic(
      "logo must be \"general\", \"cs\", or \"general-text\"; "
        + "pass a custom image via logo-image",
    )
  }
}

#let format-date(date, lang: "en") = {
  text(lang: lang, date.display("[month repr:long] [year]"))
}

/// Thesis titles are always shown in capital letters (ADE cover style).
#let thesis-title(title) = upper(title)
