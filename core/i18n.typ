#import "@preview/tieflang:0.1.0": configure-translations

#let languages = (
  english-us: "en-us",
  english-uk: "en-uk",
  deutsch-de: "de-de",
)

#let i18n-en-us = (
  copyright-page: (),
  chapter: chapter-number => [Chapter #chapter-number],
  table-of-content: [Table of Content],
)

#let i18n-en-uk = (
  copyright-page: (),
  chapter: chapter-number => [Chapter #chapter-number],
  table-of-content: [Table of Content],
)

#let i18n-de-de = (
  copyright-page: (),
  chapter: chapter-number => [Kapitel #chapter-number],
  table-of-content: [Inhaltsverzeichnis],
)

#let setup-i18n = () => configure-translations(
  (
    en-us: i18n-en-us,
    en-uk: i18n-en-uk,
    de-de: i18n-de-de,
  ),
  strict: true,
  default: "en-us",
)
