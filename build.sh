#!/usr/bin/env bash
#
# build.sh — Regenerate the publication-ready outputs for "Beyond Simandou"
# from the single Markdown master + metadata.
#
# Requirements: pandoc (>= 3.x). For PDF output, a LaTeX engine (xelatex) is
# also required; PDF is optional and skipped automatically if unavailable.
#
# Outputs (written to ./build):
#   Beyond-Simandou.epub  — EPUB 3, for EPUB conversion and KDP/Kindle.
#   Beyond-Simandou.docx  — Word, for Amazon KDP paperback and editing.
#   Beyond-Simandou.pdf   — print-style PDF (only if xelatex is present).

set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SRC="$ROOT/manuscript/Beyond-Simandou.md"
META="$ROOT/manuscript/metadata.yaml"
CSS="$ROOT/assets/epub.css"
OUT="$ROOT/build"

mkdir -p "$OUT"

echo "==> Building EPUB"
pandoc "$META" "$SRC" \
  --from=markdown \
  --to=epub3 \
  --toc --toc-depth=1 \
  --split-level=1 \
  --css="$CSS" \
  --output="$OUT/Beyond-Simandou.epub"

echo "==> Building DOCX (KDP paperback / editing)"
pandoc "$META" "$SRC" \
  --from=markdown \
  --to=docx \
  --toc --toc-depth=1 \
  --output="$OUT/Beyond-Simandou.docx"

if command -v xelatex >/dev/null 2>&1; then
  echo "==> Building PDF (print preview)"
  pandoc "$META" "$SRC" \
    --from=markdown \
    --to=pdf \
    --pdf-engine=xelatex \
    --toc --toc-depth=1 \
    -V documentclass=book \
    -V geometry:paperwidth=6in \
    -V geometry:paperheight=9in \
    -V geometry:margin=0.75in \
    -V fontsize=11pt \
    --output="$OUT/Beyond-Simandou.pdf"
else
  echo "==> Skipping PDF (xelatex not installed)"
fi

echo "==> Done. Outputs in: $OUT"
ls -la "$OUT"
