#import "../lib.typ": languages, setup, start-before-main, start-main, table-of-content

#show: setup.with(
  title: "Tables of Content Showcase",
  subtitle: "Three styles, two numbering modes",
  author: "Example Author",
  publisher: "Tief Fiction Press",
  date: datetime(year: 2026, month: 2, day: 6),
  language: languages.english-us,
)

#show: start-before-main

#heading(level: 1, outlined: false)[ToC: Num-First + Chapter Numbers]
#table-of-content(style: "num-first", show-chapter-nums: true)

#heading(level: 1, outlined: false)[ToC: Underlined]
#table-of-content(style: "underlined", show-chapter-nums: false)

#heading(level: 1, outlined: false)[ToC: Dotted + Chapter Numbers]
#table-of-content(style: "dotted", show-chapter-nums: true)

#show: start-main

= The North Window
== Frost in the Frame
#lorem(160)

== The Locked Stair
#lorem(120)

= The South Door
== Footsteps in the Hall
#lorem(140)

== The Ashes Speak
#lorem(120)
