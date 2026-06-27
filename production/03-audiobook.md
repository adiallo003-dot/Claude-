# Production Guide — Audiobook (ACX / Audible / spoken-word)

An audiobook is read aloud, so several elements that work on the page must be handled differently for the ear. This guide explains what to keep, what to adapt, and how to prepare a narration script from the master manuscript.

## 1. Front/back matter — what to read

| Page | Audiobook handling |
|---|---|
| Half-title | Skip. |
| Title page | Read once at the opening: title, subtitle, author. |
| Copyright | Skip in the body; ACX puts rights in the **opening/closing credits**, read separately. |
| Dedication | Read, briefly. |
| Epigraph ("The mines are not the test…") | Read once; it doubles as a strong cold open. |
| Contents | **Skip** — a spoken list of parts is tedious and non-navigable. |
| Architecture / One Page | Read — they orient the listener and work well as spoken overviews. |
| Preface → Final Doctrine | Read in full. |
| About the Author | Read at the end. |
| A Note on Figures and Sources | Read a shortened version, or move to closing credits. |

## 2. Elements to adapt for the ear

- **Callout boxes (National Rule Zero, Core Doctrine, Governing Questions).** On the page they are visually set off; aloud, the narrator should **announce the label** ("National Rule Zero:") then read the content, with a short pause before and after. The labels are already explicit in the text, which makes this clean.
- **Pull-quotes that repeat nearby body text.** Some display quotes restate a line that is also in the prose (e.g., "Capability must precede capital"). To avoid the listener hearing the same sentence twice back-to-back, **read the line once** — skip the standalone pull-quote when its words appear in adjacent prose. (The one true duplicate, in Part III, has already been removed from the text.)
- **The recurring motif** "The mines are not the test. The state is the test." should be **kept every time** — it is an intentional refrain and lands well aloud.
- **Bulleted lists** (allocation percentages, the five Resource Constitution elements, the prohibitions). Narrate with clear enumeration ("First… Second…" or a distinct pause between items) so structure survives without visible bullets.
- **Percentages and large numbers** read naturally as set ("more than sixty percent," "fifteen point five million hectares," "three hundred thousand").
- **Place names** — provide the narrator a pronunciation sheet (see §4).

## 3. Producing the audiobook

- **ACX/Audible technical specs:** mono or stereo, 192 kbps+ MP3, −23 to −18 dB RMS, peak ≤ −3 dB, ≤ −60 dB noise floor; each chapter a separate file; opening and closing credits as separate files; plus a retail audio sample.
- **Chapter files:** one per Part (and one each for Preface and Final Doctrine) maps cleanly to the book's structure.
- **Opening credits (read):** "Beyond Simandou: The Productive Republic, a Doctrine for the Guinean State, written by Abdourahamane Diallo, narrated by [name]."
- **Closing credits (read):** copyright line and production credit.
- **Narrator choice:** a measured, authoritative non-fiction voice. The text is formal and rhetorical; it suits deliberate pacing. Given the Guinean/French place names, a narrator comfortable with French pronunciation is preferable.

## 4. Pronunciation sheet (give to the narrator)

- **Simandou** — see-mahn-DOO
- **Conakry** — KOH-nah-kree
- **Boké** — boh-KAY
- **Labé** — lah-BAY
- **Kindia** — KIN-dee-ah
- **Mamou** — mah-MOO
- **Kankan** — kahn-KAHN
- **Siguiri** — see-gee-REE (hard g)
- **Mandiana** — mahn-dee-AH-nah
- **Nzérékoré** — n-zay-ray-koh-RAY
- **Fouta Djallon** — FOO-tah jah-LOHN
- **Haute Guinée** — oht ghee-NAY
- **Tambacounda** — tahm-bah-KOON-dah
- **Kpelle** — k-PEH-leh · **Loma** — LOH-mah · **Guerzé** — gair-ZAY · **Kissi** — KEE-see
- **Côte d'Ivoire** — koht dee-VWAR
- **Milo** (river) — MEE-loh

*(Approximate guides; confirm with the author for any preferred local pronunciation.)*

## 5. Preparing the narration script

The cleanest source for a script is a plain-text/Word export with the page-only elements stripped. Generate a DOCX from the master and remove the Contents and duplicate pull-quotes per §2:

```bash
bash build/build.sh          # produces dist/Beyond-Simandou.docx
```

Then save a copy as `Beyond-Simandou-narration.docx`, delete the Contents page, mark callout labels for the narrator, and insert the pronunciation notes inline where each name first appears.
