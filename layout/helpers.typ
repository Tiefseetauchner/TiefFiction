#import "../core/footers.typ": page-number-footer
#import "../core/headers.typ": chapter-number-header


#let start-preamble = body => {
  pagebreak(weak: true)
  counter(heading).update(0)
  set heading(numbering: "A")
  set page(numbering: "I")
  counter(page).update(1)
  set page(footer: page-number-footer())

  body
}

#let end-preamble = body => {
  pagebreak()
  set heading(numbering: "1")
  set page(numbering: "1")
  counter(heading).update(0)
  counter(page).update(1)
  set page(header: chapter-number-header(), footer: page-number-footer())

  body
}
