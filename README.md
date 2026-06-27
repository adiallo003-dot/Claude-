# Beyond Simandou — Book Production

**Beyond Simandou: The Productive Republic — A Doctrine for the Guinean State**
by Abdourahamane Diallo.

This repository holds the publication-ready manuscript and the tooling to
generate every distribution format from a single source. The author's text is
treated as final intellectual work; the editing here is **production editing**
(structure, standardization, light copyediting, format engineering), not
rewriting. See `editorial/Editorial-Notes.md` for the full record of changes.

---

## Repository layout

```
manuscript/
  Beyond-Simandou.md      ← the single source of truth (edit this)
  metadata.yaml           ← title/author/rights/ISBN for the title page & metadata
assets/
  epub.css                ← EPUB stylesheet
editorial/
  Editorial-Notes.md          ← what was changed and why
  Citations-to-Verify.md      ← every figure/claim to source before release
  Audiobook-Production-Notes.md ← narration + ACX/Audible guidance
build/
  Beyond-Simandou.epub    ← EPUB 3  (ebook / Kindle / KDP digital)
  Beyond-Simandou.docx    ← Word    (KDP paperback / further editing)
  Beyond-Simandou.pdf     ← 6×9 print preview
build.sh                  ← regenerates everything in build/
```

> **Single-source workflow:** make all content changes in
> `manuscript/Beyond-Simandou.md` (and metadata in `metadata.yaml`), then run
> `./build.sh`. Do not hand-edit files in `build/` — they are regenerated.

## Building the outputs

Requires **pandoc ≥ 3.x**. PDF additionally requires a LaTeX engine (`xelatex`);
if it is absent, the script skips PDF and still produces EPUB + DOCX.

```bash
./build.sh
```

To produce a plain-text narration script for the audiobook:

```bash
pandoc manuscript/Beyond-Simandou.md -t plain -o build/Beyond-Simandou.txt
```

---

## Publishing each format

### Amazon KDP — eBook (Kindle)
Upload **`Beyond-Simandou.epub`**. KDP accepts EPUB directly and converts it to
Kindle format. The EPUB includes device navigation (a built-in table of
contents) and chapter-level splits.

### Amazon KDP — Paperback
Two options:
1. Upload **`Beyond-Simandou.docx`** and let KDP format it (simplest), or
2. Upload a print-ready **PDF**. `build.sh` produces a 6×9 in PDF preview; for a
   final interior, set the trim size and margins to your chosen KDP spec.

**Suggested KDP paperback setup** for a book this length (~11k words ≈ 60–80
pages at 6×9): trim size **6×9 in**, inside (gutter) margin **0.5–0.75 in**,
outside margins **0.5 in**, no bleed (text-only interior).

### EPUB distribution (Apple Books, Kobo, Google Play, etc.)
Use **`Beyond-Simandou.epub`** as-is. Run it through
[EPUBCheck](https://www.w3.org/publishing/epubcheck/) before wide distribution;
this build splits at the chapter level and embeds a navigation document.

### Audiobook (ACX/Audible, Spotify, Findaway)
Follow **`editorial/Audiobook-Production-Notes.md`** — it covers what to read,
how to handle the doctrinal blocks and refrains, a pronunciation guide for
Guinean place names, ACX audio specs, and a running-time estimate.

---

## Before release — author checklist

- [ ] Approve or replace the **dedication** (editor-supplied placeholder).
- [ ] Add **contact details** to the About the Author page.
- [ ] Assign and insert an **ISBN** in `metadata.yaml` (separate ISBNs for ebook
      and paperback).
- [ ] Verify the figures in **`editorial/Citations-to-Verify.md`**.
- [ ] Commission a **cover**. KDP eBook cover: 1600×2560 px (1.6:1). Paperback
      cover is a full wraparound sized to final page count — generate the
      template from KDP after the interior is final.

---

## A note on cover art
No cover is generated here (it is a design deliverable, not a text deliverable).
The book's own imagery — the iron-ore railway, the four corridors, "the mines are
not the test" — offers strong direction for a designer.
