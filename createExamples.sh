#!/bin/bash
set -e

SHADOW="70x10+10+10"

render() {
    typst c examples/$1 examples/${1%.typ}.pdf --font-path fonts/ --root "$(pwd)"

    echo "Created $1.png"
}

render copyright-block-examples.typ
render fiction.typ
render header-footer-examples.typ
render localization-de-de.typ
render localization-en-uk.typ
render title-page-basic.typ
render title-page-multi-author.typ
render toc-examples.typ
