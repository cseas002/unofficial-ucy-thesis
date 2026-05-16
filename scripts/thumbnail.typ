// Renders the template cover for template/thumbnail.png (Universe preview).
#import "../src/front-matter.typ": framed-cover
#import "../src/utils.typ": resolve-logo

#set page(
  paper: "a4",
  margin: (left: 2.5cm, right: 2.5cm, top: 1.5cm, bottom: 2.5cm),
)
#set text(
  font: ("Times New Roman", "New Computer Modern"),
  size: 12pt,
  lang: "en",
)

#let localized-info = (
  en: (
    diploma-project: "Diploma Project",
    title: "THESIS TITLE",
    department: "Department of Computer Science",
  ),
)

#framed-cover(
  lang: "en",
  localized-info: localized-info,
  authors: ("Student Name",),
  date: datetime(year: 2026, month: 5, day: 16),
  resolve-logo(),
)
