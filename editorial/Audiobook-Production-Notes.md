# Audiobook Production Notes — *Beyond Simandou*

Guidance for narrating and producing the audio edition (ACX/Audible, Spotify
Audiobooks, or Findaway Voices). The manuscript reads well aloud — it is written
in measured, declarative prose with deliberate refrains — but a few elements need
explicit handling because they are visual on the page.

---

## 1. Front matter — what to read

- **Read:** Title, subtitle, author name, then the epigraph
  (*"A nation develops when productive activity becomes more rewarding than
  political access."*).
- **Read:** The dedication.
- **Skip in audio (standard practice):** the copyright page and the visual Table
  of Contents. ACX requires an opening credit and a closing credit instead (see
  §6).
- **Read:** "The Architecture of This Doctrine" and "The Doctrine in One Page."
  These orient the listener and work well as spoken overviews. Announce them by
  title.

## 2. Handling the doctrinal set-pieces (the offset blocks)

The labeled blocks — **National Rule Zero / One / Two**, **The Capability Rule**,
**Core Doctrine**, **The Non-Negotiable Separation**, and each **Governing
Question** — are visually boxed on the page. In audio, signal them with delivery,
not punctuation:

- Announce the label plainly: *"National Rule Zero."* — then a brief pause.
- Drop the pace slightly and lower pitch for the rule's text; these are the
  book's anchor statements.
- For each **Governing Question**, read the label and its subtitle
  (*"Governing Question — The Elite Capture Paradox"*), pause, then continue.
  Consider a very subtle shift in tone to mark them as the author's deliberate
  "open questions."

## 3. The refrains

These recur intentionally. Deliver them consistently each time so the listener
recognizes them as the book's spine:

- *"The mines are not the test. The state is the test."*
- *"Capability must precede capital."*
- *"Mining is not the strategy. Mining finances the strategy."*

The closing litany in the Conclusion (the long "When… / When… / That is the
moment Guinea begins to transform.") is the emotional peak of the book. Read the
"When…" clauses with building cadence and a clear lift, then land "Not before."
deliberately after a pause.

## 4. Lists and corridors

The bulleted lists (the five Resource Constitution elements, the four corridors,
the SEZ's five pillars, the prohibitions in Part Twelve) should be read as
enumerated items with a short pause between each. For the corridor route lines
(e.g., *"Boké → Boké Deep Commercial Port → Labé → Kankan → Haute Guinée →
Bamako"*), read the arrows as **"to"**: *"Boké, to Labé, to Kankan…"*

## 5. Pronunciation guide (Guinean and regional names)

Approximate guidance; confirm with a Guinean French speaker where possible.

| Name | Approximate pronunciation |
|------|---------------------------|
| Simandou | see-mahn-DOO |
| Guinea | GIH-nee |
| Conakry | KOH-nah-kree |
| Boké | boh-KAY |
| Labé | lah-BAY |
| Kankan | kahn-KAHN |
| Kindia | KEEN-dee-ah |
| Mamou | mah-MOO |
| Siguiri | see-gee-REE (hard g) |
| Mandiana | mahn-dee-AH-nah |
| Nzérékoré | en-zay-ray-koh-RAY |
| Fouta Djallon | FOO-tah jah-LOHN |
| Haute Guinée | oht ghee-NAY |
| Kpelle | KP-eh-leh (kp as a single sound) |
| Loma | LOH-mah |
| Guerzé / Guerze | gehr-ZAY |
| Kissi | KEE-see |
| Tambacounda | tahm-bah-KOON-dah |
| Bamako | BAH-mah-koh |
| Milo (river) | MEE-loh |
| Côte d'Ivoire | koht dee-VWAHR |

## 6. ACX/Audible technical checklist

- **Opening credits:** *"Beyond Simandou: The Productive Republic — A Doctrine for
  the Guinean State, written by Abdourahamane Diallo, narrated by [name]."*
- **Closing credits:** *"This has been Beyond Simandou, written by Abdourahamane
  Diallo, narrated by [name]. Production by [studio]."*
- **Per-file structure:** one audio file per chapter (the manuscript's chapter
  splits map directly — 22 sections). Each file opens by announcing the section
  title.
- **Audio specs (ACX):** MP3, 192 kbps CBR or higher, 44.1 kHz; RMS between
  −23 dB and −18 dB; peaks no higher than −3 dB; noise floor below −60 dB; each
  file with 0.5–1 s of room tone at head and 1–5 s at tail.
- **Retail/opening sample:** "The Doctrine in One Page" makes an excellent
  ~3-minute retail sample.
- **Running time estimate:** ≈ 11,200 words ÷ ~150 wpm ≈ **75–80 minutes** of
  finished audio (a short-form/novella-length audiobook).

## 7. A clean reading text

For narration, the EPUB or a plain-text export from the Markdown master is the
cleanest script (no page furniture). Generate a plain-text script with:

```
pandoc manuscript/Beyond-Simandou.md -t plain -o build/Beyond-Simandou.txt
```
