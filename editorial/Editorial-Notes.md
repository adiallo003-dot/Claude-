# Editorial Notes — *Beyond Simandou: The Productive Republic*

**Prepared for:** Abdourahamane Diallo (author)
**Role:** Production editing and book-structure preparation
**Scope discipline:** No new arguments, examples, statistics, or policy
recommendations were introduced. The author's voice, structure, and ideas were
preserved. All edits below are organizational, copy-level, or production-related.

---

## 1. What was done

The manuscript arrived as a finished, polished doctrine of roughly 11,000 words.
It already contained strong raw material for nearly every element of a published
book — title-block copy, an author bio, a rights statement, a contents list,
thirteen Parts, an architecture summary, a one-page summary, six governing
questions, and a closing section ("The Final Doctrine"). The work here was to
**organize, standardize, and engineer the manuscript for publication**, not to
rewrite it.

### Front matter (built to publishing convention)

| Page | Source |
|------|--------|
| **Title page** | Auto-generated from `metadata.yaml` (title, subtitle, author, year) so it renders consistently in EPUB, DOCX, and PDF. |
| **Copyright page** | Assembled from the author's existing "Rights & Citation" and "First Published" text, plus standard publishing lines (copyright notice, independence statement, ISBN placeholder). |
| **Dedication** | *Editor-supplied placeholder* drawn only from the manuscript's own opening motif (the capable young person offered "only one road — out"). Introduces no new argument. **Please review and replace with your own wording if you prefer.** |
| **Epigraph** | The author's existing line: *"A nation develops when productive activity becomes more rewarding than political access."* |
| **Table of Contents** | Standardized from the author's "Contents" list; also auto-generated as device navigation in EPUB and as a field TOC in DOCX. |

### Front-matter orientation pieces (kept, as authored)

"The Architecture of This Doctrine" and "The Doctrine in One Page" were retained
as front-matter sections, with the author's "On the Governing Questions" note
folded in where the author placed it. These are part of the author's deliberate
design and were not altered in substance.

### Body matter

- The **Preface** ("Why This Document Exists") and all **thirteen Parts** are
  preserved in the author's order and wording.
- **Chapter titles standardized** to a single pattern: `Part One — The
  Misallocation`, `Part Two — The Three Economies`, etc. (The source mixed
  "PART ONE" headers with roman numerals in the contents list.)
- **Sub-section headings standardized** to title case and consistent heading
  levels throughout.
- **Doctrinal set-pieces** — National Rule Zero, National Rule One, National
  Rule Two, the Capability Rule, the Non-Negotiable Separation, Core Doctrine,
  and the six Governing Questions — were given **one consistent visual
  treatment** (a labeled, offset block) so they read as the structural beacons
  the author intended across all formats.

### Conclusion

A conclusion was **not** fabricated. The author's existing closing section, "The
Final Doctrine," already performs this role and was retained in full, simply
re-labeled **"Conclusion — The Final Doctrine"** for navigation. The "Final
Governing Question" and the closing refrain were preserved within it.

### Back matter

- **About the Author** placed at the back (publishing convention) using the
  author's existing bio. Marked as a **placeholder** per request, with a bracket
  for contact details to be inserted before release.

---

## 2. Copyedits applied (light-touch)

The prose was already clean and consistent, so copyediting was deliberately
conservative. The complete list of substantive changes:

1. **Rejoined split sentences around statistics.** In "The Scale of the
   Emergency" (Part One), three figures (34% NEET, 88% disapproval) had been
   split mid-sentence onto new lines by a layout artifact in the source file.
   These were rejoined into their original sentences. **No wording changed.**

2. **Removed one verbatim duplicate.** The lines *"Mining is not the strategy. /
   Mining finances the strategy."* appeared twice within Part Three — once as the
   labeled **Core Doctrine** block and again, identically, about a dozen lines
   later as a standalone pull-quote. The standalone repeat was removed; the
   labeled Core Doctrine block was kept. This is the single instance of
   "unnecessary repetition" removed. (See note on intentional refrains below.)

3. **Standardized labels and headings** as described in §1 (no body text
   altered).

4. **Punctuation/typography normalization.** Spaced em dashes, percentages, and
   quotation marks were normalized to a single house style. Typographic
   (curly) quotes and apostrophes are applied automatically at build time.

Nothing else in the body prose was reworded. Sentences, paragraph order,
arguments, examples, and figures are the author's.

---

## 3. Intentional repetition preserved (not "errors")

Several phrases recur across the book. These are **deliberate rhetorical
refrains**, not accidental repetition, and were preserved:

- *"The mines are not the test. The state is the test."* — the book's governing
  motto; recurs at the title, the architecture page, the close of Part Ten, and
  the final pages.
- *"Capability must precede capital."* — National Rule Two, echoed as a
  pull-quote.
- *"Mining is not the strategy. Mining finances the strategy."* — retained once
  (see §2.2).

Removing these would alter the author's voice and cadence, so they were kept by
design.

---

## 4. Consistency and terminology

Terminology is consistent throughout and was left as the author set it. Items
worth a final author glance (not changed, to avoid altering content):

- **Ethnonyms** in Part Eight: "Kpelle, Loma, Guerze, and Kissi." The Guerzé
  people are often written with an accent (*Guerzé*). Left as authored — your
  call whether to add the diacritic for consistency with *Nzérékoré*, *Haute
  Guinée*, etc.
- **Place names** with diacritics (*Boké, Labé, Nzérékoré, Haute Guinée, Côte
  d'Ivoire, Fouta Djallon*) are used consistently.
- **"National Rule Zero / One / Two"** capitalization is consistent.
- **"Governing Question"** labels are consistent and each retains the author's
  subtitle (e.g., "The Elite Capture Paradox").

---

## 5. Citations and verification

See **`Citations-to-Verify.md`** for the full, chapter-keyed list of factual and
statistical claims that should be sourced before publication. The reading text
was intentionally left clean (no inline "[citation needed]" tags, which are
inappropriate in a finished book). The recommended path is to add a brief **"A
Note on Sources"** page or endnotes once figures are confirmed — the build is
already set up to accommodate either.

---

## 6. Open items for the author

- [ ] Approve or replace the **dedication** wording.
- [ ] Insert **contact details** on the About the Author page.
- [ ] Provide an **ISBN** (one each for the ebook and paperback editions) for
      the copyright page / metadata.
- [ ] Confirm or source the figures in **`Citations-to-Verify.md`**; decide
      whether to add a sources note or endnotes.
- [ ] Optional: commission a **cover** (see `README.md` for KDP cover specs).
- [ ] Confirm the **French translation** line should remain ("French
      translation in preparation").
