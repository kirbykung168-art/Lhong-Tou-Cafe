# LHONG TOU CAFE — Brand Research (Round 2)

> Round-2 pass against Kirby's amplified bar: one unforgettable moment, brand-specific motion, curated emotional gallery, type-as-voice, no template borrowing. Audited against the live IG profile, real photography, and the existing v1 build.

## Verified identity (carried from v1)

- **Name:** LHONG TOU CAFE — Chinese **龙头** ("Dragon's Head") · Thai **หลงโถว**
- **Location:** 538 Yaowarat Rd, Samphanthawong, Bangkok 10100 — *literal head of Yaowarat at the Chalermburi intersection*
- **Founders:** two interior designers + a food stylist (Time Out Bangkok, Sep 2022; corroborated by BK Magazine, Jul 2018) — same team behind Sukhumvit's Meat Bar 31
- **First opened:** July 2018
- **Branches:** Yaowarat flagship (538 Yaowarat Rd · daily 09:00–20:00 · +66 64 935 6499) + The Market Bangkok (111 Ratchadamri Rd, G Floor · daily 10:00–22:00 · +66 64 935 6588)
- **IG verified:** [@lhongtoucafe_official](https://www.instagram.com/lhongtoucafe_official/) · **10.6K followers, 920 posts** (as observed June 8, 2026)
- **FB:** /Lhongtouyaowaratofficial
- **Story Highlights as curated by brand themselves:** `Snack Box · Menu · Map · Vibe` — adopt as site IA spine
- **Tagline they use in IG bio:** Restaurant · หลงโถว คาเฟ่ สาขาเยาวราช · 538 Yaowarat Rd, Bangkok

## Verbatim voice (captured from IG post overlays)

- "เยาวราช · ถนนที่ไม่เคยหลับใหล" *(Yaowarat — the street that never sleeps)*
- "Bangkok · Lhong Tou Cafe at Yaowarat" *(post pin)*
- "We're OPEN DAILY" *(set against a Thai-tea-fried-egg-rice dish, served on a blue-and-white plate)*
- "Black Lava Bun · ONLY 29 baht" *(Halloween 2025 promo, charcoal lava bun with googly eyes)*
- "Happy Chinese New Year 2026 · 龙头 Lhong Tou Cafe" *(red gilded plated breakfast set, four-corner border ornament)*
- "LHONG TOU CAFE · OPENING HOURS CHANGED · WE ARE OPEN" *(kraft-paper scroll + ink-line woman-with-fan illustration)*
- IG Highlight labels: `Snack Box · Menu · Map · Vibe`

**Voice register:** confident, restaurant-pride, bilingual (Thai-English-Chinese), willing to be playful when seasonal (Halloween googly buns, lion-dance reels). NOT minimalist or hushed. NOT instagrammable-quotes. *Restaurant pride.*

## Palette — sampled from 9 real Lhong Tou photographs

(Median-cut quantization, top 6 colours per source image, aggregated.)

| token | hex | sampled from |
|---|---|---|
| `--ink` | `#150B08` | timeout interior darks |
| `--bark` | `#2A1810` | egg-lava-bun shadow |
| `--teak` | `#47422F` | exterior shopfront (dominant) |
| `--cocoa` | `#755029` | shumai close, interior wood |
| `--caramel` | `#9D7842` | exterior shopfront accent |
| `--amber` | `#E18D33` | **egg lava bun yolk — the signature colour** |
| `--brass` | `#BC8F4A` | brand wordmark seal frame |
| `--gold-pale` | `#E8BC7F` | shumai golden brown |
| `--cream` | `#EFEAE5` | timeout interior light surfaces |
| `--stone` | `#B8AEA9` | interior atmosphere shot |
| `--seal-red` | `#A82127` | hand-stamped wordmark on profile pic |

**Crucial correction vs v1:** real Lhong Tou photography is **teak-dominant with amber accents**, NOT the bright vermillion + jade green palette assumed in v1. Green is a minority colour in the actual brand world (a single jade wall in one Time Out frame). Red is used **like a stamp** — sparingly, with weight — never as a dominant area. The v1 palette read "Chinatown stereotype." The Round-2 palette reads "designer-led heritage shophouse," which is what the cafe *actually is*.

## Typography — full rebuild

| role | font | weight | why |
|---|---|---|---|
| Display Latin | **Cormorant Upright** | 300, 500 | replaces Fraunces (which Stockroom also ships — that's the literal "copy-paste" smell). Cormorant Upright reads as designer-led editorial without trending into faux-Chinese. Kirby's call. |
| Display CJK | **Noto Serif SC** | 800, 900 | for the 龙头 wordmark seal. Same as v1 — correct call retained. |
| Display Thai | **Noto Serif Thai** | 700 | for หลงโถว at display weight. New addition vs v1 (which used IBM Plex Sans Thai — too modern-tech for heritage register). |
| Body | **Inter** | 350, 400, 500 | sturdy neutral. |
| Mono | **IBM Plex Mono** | 400, 500 | for prices, branch IDs, hours, GPS — gives the receipt-stamp feel. |

## THE moment (the ONE unforgettable visual)

**The Seal Reveal.** First-load hero is a cream paper field — no photo, no nav distraction. Centre stage: the **龙头** wordmark renders inside a red wax-seal circle with stamped-ink edge bleed (SVG turbulence+displacement filter for the irregular stamp border). Sequence:

1. Cream field fades in with subtle paper noise (60ms)
2. Red seal circle scales 0→1 with a 1.15 overshoot (CSS spring, 400ms)
3. Inside the seal, **龙头** in Noto Serif SC 900 fades white-on-red (300ms)
4. The seal "stamps" — quick Y-translate down 4px + warm shadow flash (180ms)
5. Below, **LHONG TOU CAFE** in Cormorant Upright italic, letter-by-letter cascade (600ms total)
6. Below that, **หลงโถว · YAOWARAT, BANGKOK** in Noto Serif Thai (200ms fade)
7. A brush-stroke underline draws beneath (SVG stroke-dasharray, 500ms)

Total: ~2.1s. On reduced-motion, all of this resolves instantly with no scale/translate.

After scroll, the seal remains as a tiny corner mark in the topbar — like a stamp on every page of an antique catalogue.

**Why this is the ONE:** every other element on the site — palette, motion language, type, easter egg — derives from "stamped ink on cream paper." The hero IS the brand identity reasserted as motion. No other site in the portfolio has a wax-seal entrance.

## Motion language (brand-derived, all new)

| motion | trigger | inspiration |
|---|---|---|
| **Stamp-ink edge** | Hero seal first paint + section dividers | The brand's actual hand-stamped profile picture |
| **Brush-stroke underline draw** | Every h2 on scroll-into-view | Calligraphy under signboard text |
| **Lantern radial breathe** | Hero corners, footer | Yaowarat shopfront lanterns at dusk |
| **Receipt slip lift** | Menu card hover | The paper-ticket bills passed back at heritage shophouses |
| **Antique brass type weight shift** | Price hover (small wght axis tween) | Hot brass type setting |
| **Rice-paper noise overlay** | All cream surfaces, 4% opacity, baseFrequency 0.9 | Antique paper bleed |

All gated on `prefers-reduced-motion: reduce`.

## Easter egg

Type **"lhong tou"** or **"龙头"** anywhere on the page → an SVG ink-brush horizontal stroke draws across the centre of the viewport over 700ms in seal-red, then fades. Buffer resets on any non-matching keystroke.

## Curated gallery — narrative arc (not a sample)

Six photos in deliberate sequence, telling **"a sunlit slow morning at Yaowarat"**:

1. **Place** → exterior shopfront (the Yaowarat frontage with red wood doors)
2. **Ritual** → dim sum spread aerial (the table being assembled)
3. **Craft** → shumai close-up (the dumpling itself)
4. **Revelation** → egg lava bun broken open (the salted-yolk lava moment)
5. **Abundance** → BK editorial cover (the curated full-table editorial)
6. **Intimacy** → double-decker interior (two people seated on the upper bunk)

On desktop: a horizontal scroll-snap sequence with section labels (Place / Ritual / Craft / Revelation / Abundance / Intimacy) anchored at top — feels like turning catalogue pages.

On mobile: vertical with **deliberate overlap** — each frame's bottom 8% peeks the next frame's top 8%, creating a stacked-polaroid feel that's *better than the desktop sequence* because thumbs scroll continuously. Mobile parity reward.

## Drift fixes vs v1

| v1 element | drift | fix |
|---|---|---|
| Fraunces for display | shared with Stockroom — direct copy-paste smell | swap to Cormorant Upright |
| Bright `#c5331e` vermillion + jade `#2f5d4a` dominant | real brand is teak + amber, red is stamp-only | rebuild palette from real-photo sampling |
| "Type-through-photo wordmark" section | also shipped on Stockroom — duplicated technique | replace with the Seal Reveal as hero |
| Bento dim-sum grid | generic siteinspire pattern | replace with three vertical bamboo-signboard cards (one per ritual: morning / midday / late) |
| Italic-em emphasis in headlines ("A short, *handpicked* board") | shipped on Stockroom + Mother Roaster — voice template | rewrite with brand-pride voice from actual captions |
| Headline tagline "A room *worth photographing*" | generic instagrammable register | rewrite as "Designer-led, Yaowarat-grown" or quote BK Mag verbatim |
| IBM Plex Sans Thai | tech-modern register, wrong for heritage | swap to Noto Serif Thai |
| Eight-animation bullet-point list ambition | dilutes any single motion | commit to one signature (the Seal) + brush underline as supporting |

## Verification before push

1. Open new site at full screen on desktop next to `instagram.com/lhongtoucafe_official` in adjacent tab
2. Test: "do these read as the same brand identity system?"
3. Specifically check: cream / teak / amber dominance ✓, red as accent only ✓, seal mark prominent ✓, type heavier than Fraunces ✓
4. iPhone 14 viewport (390×844 @ dpr 3): seal fills 70% width, type cascade legible, gallery overlap stacks, easter egg keystrokes register, brush-stroke underlines complete without jitter
5. Confidence rating: would Kirby screenshot the hero? → goal: yes
