#import "../lib.typ": set-header-footer, setup, start-main, title-page

#show: setup.with(
  title: "The Title",
  subtitle: "The Subtitle",
  author: "The Author",
)

#title-page()

#show: start-main

#set-header-footer("chapter-number-center")

= chapter-number-center

#lorem(400)

#set-header-footer("chapter-number-outside")

= chapter-number-outside

#lorem(400)

#set-header-footer("author-title-header-pagenum-footer")

= author-title-header-pagenum-footer

#lorem(400)

#set-header-footer("title-subtitle-header-pagenum-footer")

= title-subtitle-header-pagenum-footer

#lorem(400)

#set-header-footer("author-title-pagenum-header")

= author-title-pagenum-header

#lorem(400)

#set-header-footer("title-subtitle-pagenum-header")

= title-subtitle-pagenum-header

#lorem(400)
