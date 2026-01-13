#import "../core/state.typ": metadata-state
#import "../core/i18n.typ": setup-i18n
#import "common.typ": default-margin
#import "@preview/tieflang:0.1.0": tr

#let setup = (
  title: none,
  author: none,
  publisher: none,
  date: none,
  paper: auto,
  margin: none,
  width: none,
  height: none,
  body,
) => {
  setup-i18n()

  let pdf-authors = (
    if author == none { "" } else if type(author) == array { author.join(", ") } else { author }
      + ", published by "
      + if publisher == none { "" } else if type(publisher) == array { publisher.join(", ") } else { publisher }
  )
  let date-or-today = if date == none { datetime.today() } else { date }

  set document(
    title: title,
    author: pdf-authors,
    date: date-or-today,
  )

  metadata-state.update((
    title: title,
    author: author,
    publisher: publisher,
    date: date-or-today,
  ))

  let resulting-margin = if margin != none {
    margin
  } else {
    default-margin
  }

  set par(first-line-indent: 1.5em, justify: true)
  set heading(numbering: "1")

  show heading.where(level: 1): it => {
    pagebreak(weak: true)

    text(font: "Cormorant SC", weight: "bold", align(center, it.body))
  }

  set page(
    header: align(center, context {
      let headings = query(heading.where(level: 1))
      let current-page = here().page()
      let previous-headings = headings.filter(h => h.location().page() <= current-page)
      if previous-headings.len() == 0 {
        return
      }
      let nearest-previous-heading = previous-headings.last()
      let heading-on-current-page = nearest-previous-heading.location().page() == current-page
      let heading-number = counter(heading).at(nearest-previous-heading.location())
      let heading-display = numbering(heading.numbering, ..heading-number)
      if heading-on-current-page {
        let res-heading = headings.first()
        [ #(tr().chapter)(heading-display)]
      } else {
        [ #(tr().chapter)(heading-display) -- #nearest-previous-heading.body]
      }
    }),
    footer: context {
      let alignment = if calc.rem(here().page(), 2) == 0 { right } else { left }
      align(alignment)[ #counter(page).display() ]
    },
  )

  if width == none and height == none {
    let resulting-paper = if paper == auto { "a5" } else { paper }
    set page(
      paper: resulting-paper,
      margin: resulting-margin,
    )

    body
  } else {
    set page(
      width: width,
      height: height,
      margin: resulting-margin,
    )

    body
  }
}
