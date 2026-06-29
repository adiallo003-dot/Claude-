#!/usr/bin/env bash
#
# Build all distributable formats for "Beyond Simandou" from the single
# master manuscript. Outputs land in dist/.
#
# Requirements: pandoc (>=3). PDF uses weasyprint; if absent it falls back
# to a LaTeX engine (xelatex), and otherwise skips the PDF.
#
# Usage:  bash build/build.sh
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SRC="$ROOT/manuscript/Beyond-Simandou.md"
DIST="$ROOT/dist"
CSS="$ROOT/build/epub.css"
PRINT_CSS="$ROOT/build/print.css"
NAME="Beyond-Simandou"
TITLE="Beyond Simandou"
mkdir -p "$DIST"

echo "==> EPUB"
pandoc "$SRC" --from=markdown --to=epub3 \
  --toc --toc-depth=1 --split-level=1 \
  --css="$CSS" --metadata title="$TITLE" \
  -o "$DIST/$NAME.epub"

echo "==> DOCX"
pandoc "$SRC" --from=markdown --to=docx \
  --toc --toc-depth=1 \
  -o "$DIST/$NAME.docx"

echo "==> PDF (6x9 print interior)"
if command -v weasyprint >/dev/null 2>&1; then
  pandoc "$SRC" --from=markdown --to=pdf \
    --pdf-engine=weasyprint --toc --toc-depth=1 \
    --css="$PRINT_CSS" --metadata title="$TITLE" \
    -o "$DIST/$NAME.pdf"
elif command -v xelatex >/dev/null 2>&1; then
  pandoc "$SRC" --from=markdown --to=pdf --pdf-engine=xelatex \
    --toc --toc-depth=1 \
    -V documentclass=book \
    -V geometry:paperwidth=6in -V geometry:paperheight=9in \
    -V geometry:inner=0.875in -V geometry:outer=0.625in \
    -V geometry:top=0.75in -V geometry:bottom=0.75in \
    -V fontsize=11pt \
    -o "$DIST/$NAME.pdf"
else
  echo "    No PDF engine found (weasyprint/xelatex); skipping PDF."
fi

echo "==> Done. Artifacts in $DIST:"
ls -la "$DIST"/$NAME.*
