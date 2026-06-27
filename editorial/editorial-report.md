# Editorial Report

**Manuscript:** *Beyond Simandou: The Productive Republic — A Doctrine for the Guinean State*
**Author:** Abdourahamane Diallo
**Editor's role:** Publishing editor and book production editor
**Scope honored:** Organize, structure, copyedit, standardize, and format for publication. **No new arguments, examples, statistics, or policy recommendations were introduced. The author's voice, structure, and ideas were preserved.**

---

## 1. What was delivered

| Deliverable | Location |
|---|---|
| Publication-ready master manuscript (single source of truth) | `manuscript/Beyond-Simandou.md` |
| EPUB (ebook / Kindle source) | `dist/Beyond-Simandou.epub` |
| DOCX (editing + KDP-compatible) | `dist/Beyond-Simandou.docx` |
| Print-ready PDF (6×9 paperback interior) | `dist/Beyond-Simandou.pdf` |
| This editorial report | `editorial/editorial-report.md` |
| Citations / verification flags | `editorial/citations-and-verification.md` |
| Production guides (KDP, EPUB, paperback, audiobook) | `production/` |
| Build tooling (pandoc metadata, CSS, build script) | `build/` |

The manuscript is the single source. All output formats are regenerated from it (`build/build.sh`), so future edits are made once.

## 2. Book structure imposed

The source `.docx` was a continuous document. It has been organized into conventional trade-nonfiction structure:

**Front matter** — Half-title · Title page (with epigraph) · Copyright page · Dedication · Epigraph · Contents · The Architecture of This Doctrine · The Doctrine in One Page · Preface.

**Body** — Part I through Part XIII, each opening on its own page with a standardized title.

**Back matter** — The Final Doctrine (conclusion) · About the Author · A Note on Figures and Sources.

Reading order of the front matter follows publishing convention (half-title → title → copyright → dedication → epigraph → contents → overview matter → preface). The author's two "overview" sections (*Architecture* and *One Page*) were retained as front matter because they function as an executive summary; nothing in them was rewritten.

## 3. Specific production pages created

- **Title page** — assembled from the author's existing title, subtitle ("The Productive Republic / A Doctrine for the Guinean State"), epigraph, byline, and tagline. No invented content.
- **Copyright page** — formalized from the author's existing "Rights & Citation" and "First Published" material, plus standard placeholders (ISBN ×2, edition line) to be filled at KDP setup.
- **Dedication page** — none existed. A suggested dedication was written **using only imagery already in the Preface** (the capable young man "offered only one road out"). It is clearly marked in the source file as editor-suggested and fully replaceable. *This is the one place where words were composed on the author's behalf; please review.*
- **Table of Contents** — built to match the body exactly. Page numbers are intentionally omitted (they are inserted at final print typesetting; the ebook TOC is auto-linked).
- **About the Author** — the author's existing bio (previously near the front) was moved to its conventional back-matter position and lightly formalized. Placeholder fields added for contact, links, and author photo.
- **A Note on Figures and Sources** — a short, honest back-matter page acknowledging the figures as the author's working evidence base. This addresses the "flag citations" requirement at the reader-facing level without inventing references.

## 4. Chapter-title and formatting standardization

- Part headings unified to `Part I:` … `Part XIII:` (the source mixed "PART ONE" in the body with "PART I" in the contents — now consistent everywhere, matching the author's own TOC choice of Roman numerals).
- Section headings within parts set consistently (e.g., *The Wrong Diagnosis*, *The Mechanism*).
- The recurring set-off elements were given **one consistent treatment** as labeled callout boxes:
  - **National Rule Zero / One / Two**
  - **Core Doctrine**
  - **Governing Question · [name]** (all six)
- Display pull-quotes (e.g., "Capability must precede capital," "Gold becomes the catalyst. Not the destination.") are rendered as block quotations so they are visually distinct and can be styled or skipped per format.
- Bulleted lists normalized (parallel structure, consistent punctuation, bold lead-ins where the source used them).

## 5. Copyediting — grammar, punctuation, readability

The prose was already highly polished, so editing was **deliberately light and surgical.** Changes made:

1. **Repaired sentence breaks around display figures.** In the source, three statistics (34%, 88%, and others) began a new line mid-sentence — an artifact of large-number display styling. These were rejoined into clean running sentences. **No values changed.**
2. **Spelled-out percentages in running prose.** Numerals like "25%" within sentences were set as "25 percent" per standard nonfiction style. Purely typographic; values identical. (Tabular/label contexts may revert to the % sign at typesetting if preferred.)
3. **"national vertebrae" → "national vertebra"** (Part XIII, Segment One): singular agreement — a single spine is one vertebra/vertebral column. Minor grammar fix.
4. **"and breakdown of traditional" → "and the breakdown of traditional"** (Part XIII): missing article.
5. **"reliable Atlantic access route" — added comma** ("direct, reliable") for series clarity.
6. **"due to absence of" → "due to the absence of"** (Part IV): missing article.
7. **"is not lack of ambition" → "is not a lack of ambition"** (Part XII): missing article.
8. **Diacritic standardization:** "Guerze" → "Guerzé" (Part VIII), to match the French orthography the author uses consistently for other proper nouns (Labé, Boké, Nzérékoré, Haute Guinée, Côte d'Ivoire). Place/ethnonym diacritics are now consistent throughout.
9. **Em dashes and quotation marks** normalized to consistent typographic style; the author's characteristic spaced-em-dash voice was preserved rather than reflowed.
10. **Removed the duplicated standalone "Mining is not the strategy / Mining finances the strategy" block** that appeared twice in close succession in Part III (once as the *Core Doctrine* callout, once as a loose pull-quote a few lines later). The *Core Doctrine* callout is retained; the immediate duplicate was cut. See §6.

No sentences were reworded for style, no paragraphs reordered within sections, and no content was added.

## 6. Repetition — what was removed and what was kept

The book uses **deliberate rhetorical refrains**, which are part of its voice and were **preserved**:

- "The mines are not the test. The state is the test." (intentional motif; appears at structural anchor points)
- "Mining is not the strategy. Mining finances the strategy."
- "Capability must precede capital."
- The women's-land statistic, recalled in Parts II, XII, and the Final Doctrine as a structural callback.

**Removed** only one genuine, non-rhetorical duplication: the second, free-floating copy of the "Mining is not the strategy" couplet in Part III (item 10 above), which restated the *Core Doctrine* callout verbatim a few lines later with no intervening content. Removing it tightens the part without touching the motif, which still lands once as the callout.

Everything else identified as "repetition" proved to be intentional reinforcement and was left intact, consistent with the instruction to preserve the author's structure and voice.

## 7. Transitions

Section flow was already strong. Improvements were limited to light connective adjustments that did not add argument — e.g., ensuring each Part opens cleanly and that callout boxes are introduced rather than dropped in abruptly. No transitional *content* (new claims or bridging arguments) was authored.

## 8. Tone and terminology consistency

Standardized throughout:

- **Capitalized doctrine terms:** National Rule Zero / One / Two, Resource Constitution, Capability Rule, Learning Standard, Absorption Principle, Guardianship Trap, State Capacity Trap, Capability-Dependency Trap, Forest Region, Special Economic Zone.
- **Corridor names:** The Atlantic Gateway · The Northern Export Corridor · The Eastern Growth Corridor · The Simandou Transformation Corridor (consistent in the One-Page summary, Part XIII headers, and cross-references).
- **Place names** with consistent diacritics (see §5.8).
- **"agro-processing," "agro-logistics," "rent-seeking," "common-carrier"** hyphenation made consistent.
- **"the doctrine," "the productive economy," "the reward system"** kept lowercase as common nouns, consistent with the author's usage.

## 9. Conclusion

A conclusion already existed — **"The Final Doctrine"** — and a closing **Governing Question**. Per the brief, a new conclusion was therefore **not** written. The existing conclusion was preserved in full and formatted as the closing back-matter chapter, retaining the author's long anaphoric "When… / When…" passage as a single flowing paragraph (it had been broken into fragments by display styling in the source).

## 10. Citations / verification

All quantitative and comparative claims were catalogued without alteration in `editorial/citations-and-verification.md`. Fourteen Guinea-specific figures are the priority to source; the reader-facing "A Note on Figures and Sources" page handles disclosure for the first edition.

## 11. Open items for the author (decisions only you can make)

1. **Approve or replace the suggested dedication** (the sole composed-on-your-behalf text).
2. **Provide ISBNs** (one for paperback, one for ebook) and any imprint name for the copyright page.
3. **Supply sources** for the flagged figures (see citations file) — strongly recommended before sale.
4. **Author photo and contact details** for the About the Author page and back cover.
5. **Confirm numeral style** — words ("25 percent") as set, or the "%" sign, in running text.
6. Confirm whether the **French edition** should be produced from this same structure (recommended — the master file is translation-ready).
