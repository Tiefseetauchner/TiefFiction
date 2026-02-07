#import "../lib.typ": copyright-block, languages, setup, start-before-main

#show: setup.with(
  title: "Copyright Block Variants",
  author: ("Ada Kestrel", "Nova Ibarra"),
  publisher: "Tief Fiction Press",
  date: datetime(year: 2025, month: 11, day: 14),
  isbn: "000-0-00-000000-0",
  edition: 2,
  license: "cc-by-nc-sa",
  dedication: [_For the ones who keep the lights on._],
  language: languages.english-us,
)

#show: start-before-main

#copyright-block()

#pagebreak()

#copyright-block(
  holder: "Nova Ibarra",
  year: 2026,
  edition: 23,
  dedication: "For the librarians.",
  extra-lines: (
    "First printing of the revised text.",
    "Printed in Reykjavik.",
  ),
)

#pagebreak()

#copyright-block(
  license: none,
  dedication: none,
  settings: (text-size: 7.5pt, line-spacing: 1.2pt),
  extra-lines: ("Library edition.",),
)
