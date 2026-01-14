#import "../core/i18n.typ": setup-i18n
#import "../components/toc.typ": table-of-content
#import "common.typ": copyright-page-settings
#import "setup.typ": setup

#let book = (
  title: none,
  author: none,
  publisher: none,
  date: none,
  paper: auto,
  margin: none,
  width: none,
  height: none,
  language: none,
  toc: (:),
  copyright-page: copyright-page-settings,
  body,
) => {
  show: setup.with(
    title: title,
    author: author,
    publisher: publisher,
    date: date,
    paper: paper,
    margin: margin,
    width: width,
    height: height,
    language: language,
  )

  table-of-content(..toc)

  body
}
