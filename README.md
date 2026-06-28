# Beyond Simandou — Publication Package

*The Productive Republic — A Doctrine for the Guinean State*
by **Abdourahamane Diallo**

This repository contains the publication-ready edition of the manuscript, produced from the author's final text. The author's arguments, examples, statistics, and structure are preserved; the work here is professional editing and book production only — organization, front/back matter, copyediting, standardization, and formatting for multiple publishing channels.

## Two editions

- **Full edition** — the complete manuscript, including the prescriptive material (allocations, the Resource Constitution checklist, named institutions, the regional geography, and the four corridors).
- **Doctrine edition** — a principles-only edition. The plan-like passages are removed so the book states what the state must *become*, not what a government should *build*. Nothing was added except minor connective phrases; every change is logged in `editorial/doctrine-edition-changes.md`.

## Repository layout

```
manuscript/
  Beyond-Simandou.md                   ← MASTER, full edition (source of truth)
  Beyond-Simandou-Doctrine-Edition.md  ← principles-only edition
dist/
  Beyond-Simandou.{epub,docx,pdf}                   ← full edition
  Beyond-Simandou-Doctrine-Edition.{epub,docx,pdf}  ← doctrine edition
build/
  build.sh                    ← regenerates BOTH editions in all formats
  epub.css                    ← ebook styling
  print.css                   ← paperback interior styling
production/
  01-KDP-paperback.md         ← Amazon KDP paperback setup
  02-EPUB-ebook.md            ← ebook / Kindle conversion + validation
  03-audiobook.md             ← audiobook / ACX preparation + pronunciation
editorial/
  editorial-report.md           ← every editorial decision, documented
  citations-and-verification.md ← all figures/claims flagged for sourcing
  doctrine-edition-changes.md   ← exact record of the doctrine-edition cuts
```

## How to edit and rebuild

Make all changes in **`manuscript/Beyond-Simandou.md`** (the title-page details and book metadata live in its YAML header at the top). Then regenerate every output:

```bash
bash build/build.sh
```

Requires `pandoc` (≥3). PDF uses `weasyprint`; if unavailable the script falls back to a LaTeX engine, then skips the PDF.

## Book structure

**Front matter:** Half-title · Title page · Copyright · Dedication · Epigraph · Contents · The Architecture of This Doctrine · The Doctrine in One Page · Preface.
**Body:** Part I – Part XIII.
**Back matter:** The Final Doctrine (conclusion) · About the Author · A Note on Figures and Sources.

## Before you publish — author action items

These are summarized in `editorial/editorial-report.md` §11:

1. Approve or replace the **suggested dedication** (the only text composed on the author's behalf).
2. Add **ISBNs** (paperback + ebook) and any imprint to the copyright page.
3. Provide **sources** for the flagged figures (`editorial/citations-and-verification.md`).
4. Add **author photo / contact** to the About the Author page.
5. Confirm numeral style ("25 percent" vs "25%").
6. Decide whether to produce the planned **French edition** from this same master.

## Editorial scope honored

No new arguments, examples, statistics, or policy recommendations were introduced. A conclusion already existed ("The Final Doctrine") and was preserved rather than replaced. The author's voice and structure are intact. See the editorial report for the full, itemized record of changes.
