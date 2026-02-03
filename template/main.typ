#import "@preview/tieffiction:0.1.0": book, start-before-main, start-main

#show: book.with(
  title: "The Wonderful House",
  author: ("Jochen Garak", "Lena Tauchner"),
  publisher: "Tief Fiction Press",
  date: datetime(year: 2026, month: 2, day: 3),
  isbn: "978-1-23456-789-7",
  edition: "First edition",
  dedication: "For the readers who never sleep.",
  blurb: [
    A quiet town. A locked attic. A letter written in ink that refuses to dry.
    When Mara finds the key, the house begins to remember her.
  ],
  license: "by-nc-sa",
  toc-settings: (
    style: (name: "dotted", feel: "open"),
    show-chapter-nums: true,
  ),
  copyright-block-settings: (
    text-size: 8pt,
    line-spacing: 2.5pt,
  ),
)

#show: start-before-main

= Authors Notes

This is displayed differently and doesn't count to the chapter count!

#show: start-main

= Chapter 1: The Door That Stayed Shut

The latch was warm. Mara counted to three, pressed, and the hallway breathed.
