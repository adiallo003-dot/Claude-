#!/usr/bin/env bash
#
# Build all distributable formats for "Beyond Simandou" from the single
# master manuscript. Outputs land in dist/.
#
# Requirements: pandoc (>=3). PDF additionally needs a LaTeX engine
# (xelatex); if none is present the script falls back to a LibreOffice
# DOCX->PDF conversion, and if that is also missing it skips the PDF.
#
# Usage:  bash build/build.sh
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SRC="$ROOT/manuscript/Beyond-Simandou.md"
DIST="$ROOT/dist"
CSS="$ROOT/build/epub.css"
mkdir -p "$DIST"

echo "==> EPUB"
pandoc "$SRC" \
  --from=markdown \
  --to=epub3 \
  --toc --toc-depth=1 \
  --split-level=1 \
  --css="$CSS" \
  --metadata title="Beyond Simandou" \
  -o "$DIST/Beyond-Simandou.epub"

echo "==> DOCX"
pandoc "$SRC" \
  --from=markdown \
  --to=docx \
  --toc --toc-depth=1 \
  -o "$DIST/Beyond-Simandou.docx"

echo "==> PDF (6x9 print interior)"
PRINT_CSS="$ROOT/build/print.css"
if command -v weasyprint >/dev/null 2>&1; then
  pandoc "$SRC" \
    --from=markdown \
    --to=pdf \
    --pdf-engine=weasyprint \
    --toc --toc-depth=1 \
    --css="$PRINT_CSS" \
    --metadata title="Beyond Simandou" \
    -o "$DIST/Beyond-Simandou.pdf"
elif command -v xelatex >/dev/null 2>&1; then
  pandoc "$SRC" \
    --from=markdown --to=pdf --pdf-engine=xelatex \
    --toc --toc-depth=1 \
    -V documentclass=book \
    -V geometry:paperwidth=6in -V geometry:paperheight=9in \
    -V geometry:inner=0.875in -V geometry:outer=0.625in \
    -V geometry:top=0.75in -V geometry:bottom=0.75in \
    -V fontsize=11pt \
    -o "$DIST/Beyond-Simandou.pdf"
else
  echo "    No PDF engine found (weasyprint/xelatex); skipping PDF."
fi

echo "==> Done. Artifacts in $DIST:"
ls -la "$DIST"
