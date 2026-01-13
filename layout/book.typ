#import "../core/i18n.typ": setup-i18n
#import "common.typ": copyright-page-settings

#let book = (
  language: none,
  copyright-page: copyright-page-settings,
  body,
) => {
  title-page()

  body
}
