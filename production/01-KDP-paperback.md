# Production Guide — Amazon KDP Paperback

This guide takes the finished interior PDF (`dist/Beyond-Simandou.pdf`) through Amazon KDP paperback setup.

## 1. Trim size and interior

- **Recommended trim size:** 6" × 9" (15.24 × 22.86 cm) — the standard for serious nonfiction; it is what the build is configured for.
- **Interior file:** `dist/Beyond-Simandou.pdf` (generated from the master manuscript). It uses:
  - Justified body text, serif face, ~11 pt.
  - Each Part starts on a new page (`\newpage`).
  - Front and back matter as separate pages.
- **Bleed:** none required (text interior, no full-page images to the edge).
- **Margins / gutter:** KDP requires a gutter that grows with page count. Re-confirm at upload; for this length (~13,000 words → roughly 70–110 printed pages depending on type size), a 0.375"–0.5" inside margin is safe. Adjust in `build/build.sh` (the `geometry` settings) if KDP's previewer flags it.

## 2. Page count and numbering

- Front matter (half-title through preface) conventionally uses **lowercase roman numerals**; the body restarts at **arabic 1**. The current PDF uses a single sequence for simplicity — if you want the roman/arabic split, it is a one-line change in the LaTeX template (note in `build/build.sh`).
- The printed **Table of Contents needs page numbers**. These can only be finalized after the interior is laid out. Two options:
  1. Let the build's auto-generated TOC populate numbers (preferred — already wired via pandoc `--toc`), or
  2. Hand-number the manual Contents page after the first proof.

## 3. Required before upload

- [ ] **ISBN (paperback)** — free from KDP, or your own. Enter on the copyright page (`manuscript/Beyond-Simandou.md`, Copyright section) and rebuild.
- [ ] **Title / subtitle / author** — already set; confirm exact spelling: *Beyond Simandou: The Productive Republic — A Doctrine for the Guinean State.*
- [ ] **Cover** — see §4.
- [ ] **Categories / keywords** — suggested below.

## 4. Cover (paperback wrap)

KDP paperback covers are a **single wraparound PDF** (back + spine + front). Spine width depends on final page count and paper:

- White paper: spine width (inches) ≈ page count × 0.002252.
- Use KDP's **cover template generator** (enter trim size + page count + paper type) to get exact dimensions, then design within it.
- Front cover text: title, subtitle, author. The tagline "The mines are not the test. The state is the test." works as a cover line.
- Back cover: a short description (draw from "The Doctrine in One Page"), author bio (from About the Author), and space for the ISBN barcode (KDP can auto-place this).

## 5. KDP metadata (suggested)

- **Title:** Beyond Simandou
- **Subtitle:** The Productive Republic — A Doctrine for the Guinean State
- **Author:** Abdourahamane Diallo
- **Description:** adapt the back-matter "Doctrine in One Page" into ~150–200 words of marketing copy (keep it from the author's own text).
- **Categories (BISAC):** POLITICAL SCIENCE / Public Policy / Economic Policy; BUSINESS & ECONOMICS / Development / Economic Development; POLITICAL SCIENCE / World / African.
- **Keywords (7 slots):** Guinea, Simandou, economic development, West Africa, statecraft, mining policy, governance.
- **Language:** English (a separate French edition is planned).

## 6. Proofing

1. Upload interior PDF + cover to KDP.
2. Use the **online previewer** and **order a physical proof** before publishing.
3. Check: Part pages start recto where intended, no orphaned headings, TOC numbers correct, margins/gutter pass.

## 7. Rebuilding the interior

After any text or ISBN change:

```bash
bash build/build.sh
```

This regenerates `dist/Beyond-Simandou.pdf` (and the EPUB/DOCX) from the master manuscript.
