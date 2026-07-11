#!/bin/bash
set -e

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <version>"
    exit 1
fi

SRC_DIR="$(dirname "$0")"
VERSION="$1"

copyPackage() {
    DEST_DIR="$1/$VERSION"

    mkdir -p "$DEST_DIR"

    REQUIRED_FILES=(
        "typst.toml"
        "README.md"
        "LICENSE"
        "lib.typ"
        "header-lib.typ"
        "footer-lib.typ"
        "thumbnail.png"
        "template/"
        "components/"
        "core/"
        "layout/"
    )

    for item in "${REQUIRED_FILES[@]}"; do
        if [ -e "$SRC_DIR/$item" ]; then
            cp -r "$SRC_DIR/$item" "$DEST_DIR/"
        else
            echo "Warning: $item not found in $SRC_DIR"
        fi
    done

    if [ -f "$DEST_DIR/README.md" ]; then
        sed -i '/!\[.*\](.*)/d' "$DEST_DIR/README.md"

        CURRENT_COMMIT_HASH=$(git rev-parse HEAD)
        NEW_REPO_BLOBS_URL="https://github.com/Tiefseetauchner/TiefFiction/blob/$CURRENT_COMMIT_HASH/"
        sed -i -E "s|\[([^]]+)\]\(([^()#:][^():]*)\)|[\1]($NEW_REPO_BLOBS_URL\2)|g" "$DEST_DIR/README.md"
    fi
    
    echo "Files copied to $DEST_DIR"
}

copyPackage "$SRC_DIR/../packages/packages/preview/tieffiction"
copyPackage "../../../.cache/typst/packages/preview/tieffiction"
