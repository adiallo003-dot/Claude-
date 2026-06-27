# Production Guide — EPUB / Kindle Ebook

The reflowable ebook is `dist/Beyond-Simandou.epub`, generated from the master manuscript with `build/build.sh`.

## 1. What the EPUB already includes

- Valid EPUB 3 with embedded metadata (title, author, language, rights) from the manuscript's YAML block.
- An **auto-generated, linked navigation TOC** (no page numbers — correct for reflowable ebooks).
- Each Part as its own chapter break for clean navigation.
- Styling from `build/epub.css` (callout boxes, pull-quotes, dedication/epigraph centering).
- `\newpage` markers are ignored in reflow (correct — ebooks don't have fixed pages); chapter breaks come from headings.

## 2. Validate before publishing

Run **EPUBCheck** (the industry validator) on the file:

```bash
# if available locally:
java -jar epubcheck.jar dist/Beyond-Simandou.epub
```

KDP and other stores run their own validation on upload, but checking first avoids rejected uploads. Common things it catches: missing language, broken internal links, malformed nav — all of which the build sets correctly, so it should pass clean.

## 3. Publishing to Kindle (KDP)

- Upload `dist/Beyond-Simandou.epub` directly — KDP accepts EPUB and converts to its internal format.
- Use **Kindle Previewer** (free desktop app) to check rendering on phone/tablet/e-ink before publishing.
- Cover: KDP ebook cover is a **single front-cover image** (not a wrap). Recommended ~1600 × 2560 px, JPG/TIFF, RGB.
- Enter the **ebook ISBN** (optional for Kindle, required for some other stores) on the copyright page and rebuild.

## 4. Other stores (Apple Books, Kobo, Google Play, B&amp;N)

The same EPUB works for all major reflowable-ebook retailers and for aggregators (Draft2Digital, PublishDrive). Each store has its own ISBN policy:

- Apple Books / Kobo / Google Play: EPUB accepted directly.
- Some retailers require an ISBN distinct from the print ISBN — use a separate ebook ISBN.

## 5. Quality checklist

- [ ] Cover image displays as the first item.
- [ ] Navigation TOC lists Preface, Parts I–XIII, Final Doctrine, About the Author, Note on Sources.
- [ ] Callout boxes (National Rules, Governing Questions) are visually distinct.
- [ ] Pull-quotes render as block quotes, not body text.
- [ ] No raw `\newpage` or Markdown artifacts visible (they are stripped in conversion).
- [ ] Italic epigraphs and the centered "GUINEA · 2026" render correctly.

## 6. Rebuild

```bash
bash build/build.sh   # regenerates dist/Beyond-Simandou.epub
```
