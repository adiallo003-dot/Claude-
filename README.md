# Beyond Simandou — Publication Package

*The Productive Republic — A Doctrine for the Guinean State*
by **Abdourahamane Diallo**

This repository contains the publication-ready edition of the manuscript, produced from the author's final text. The author's arguments, examples, statistics, and structure are preserved; the work here is professional editing and book production only — organization, front/back matter, copyediting, standardization, and formatting for multiple publishing channels.

## Current edition

This is the author's **expanded 14-part revision** (it supersedes the earlier
13-part draft and the temporary "doctrine-only" cut). The whole book is now
doctrine-aligned — principles, not a plan. Part XI integrates the author's
separate **final-revision** of *The Guardianship Trap*.

## Repository layout

```
manuscript/
  Beyond-Simandou.md          ← MASTER manuscript (single source of truth)
dist/
  Beyond-Simandou.epub        ← ebook (Kindle / Apple / Kobo / Google)
  Beyond-Simandou.docx        ← Word (editing + KDP-compatible)
  Beyond-Simandou.pdf         ← print interior (6×9 paperback)
build/
  build.sh                    ← regenerates all formats from the master
  epub.css                    ← ebook styling
  print.css                   ← paperback interior styling
production/                   ← KDP, EPUB, and audiobook guides (platform
                                guidance still applies; written for the prior
                                draft, so page counts/section names differ)
editorial/
  revision-integration-notes.md ← integration + compression + proofing log (latest)
  editorial-report.md           ← original editorial decisions
  citations-and-verification.md ← figure/claim flags (now largely moot: numbers
                                   are stated loosely in the revision)
```

## How to edit and rebuild

Make all changes in **`manuscript/Beyond-Simandou.md`** (the title-page details and book metadata live in its YAML header at the top). Then regenerate every output:

```bash
bash build/build.sh
```

Requires `pandoc` (≥3). PDF uses `weasyprint`; if unavailable the script falls back to a LaTeX engine, then skips the PDF.

## Book structure

**Front matter:** Half-title · Title page · Copyright · Dedication · Epigraph · Contents · What This Doctrine Is · Before the Doctrine · The Doctrine in One Page · The Shape of the Argument · Preface.
**Body:** Part I – Part XIV.
**Back matter:** The Final Doctrine (conclusion + The Productive Republic coda) · About the Author · Author's Note · Where This Doctrine Stands · Those Who Have Done This.

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
