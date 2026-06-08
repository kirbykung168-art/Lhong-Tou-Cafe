# LHONG TOU CAFE 龙头 — Build Audit

A single-page tribute to LHONG TOU — the designer-led "hipster dim sum" cafe at the dragon's head of Yaowarat Road, with a double-decker climbing-frame seating room.

## What was verified before code

Triangulated across:
1. **BK Magazine** (Jul 2018, opening review by Pathitta Kongkakate) — founders, decor, original opening menu, prices
2. **AroiMakMak** (Jul 2019, Wilber Suen) — second branch details, AroiMakMak photos (blocked from download)
3. **LadyIronChef** (Jul 2019, Melissa Teo) — verified menu items + photo set
4. **Daniel Food Diary** (Sep 2019) — menu corroboration
5. **Time Out Bangkok** (Sep 2022, Phavitch Theeraphong + Sereechai Puttes photo set) — current hours + founder confirmation
6. **Tripadvisor / RestaurantGuru / Wanderlog** — review-count and rating cross-checks

## Hard rules — pass / fail

- "Lhong Tou" (not "Long Tou" / "Lhongtou" / "Long Tao") used consistently — **PASS**
- Chinese 龙头 + Thai หลงโถว both at full weight (Noto Serif SC / IBM Plex Sans Thai) — **PASS**
- "Cafe" (no acute accent) throughout — **PASS**
- Real photos only, every <img> source-commented — **PASS** (16 photos from Time Out, LadyIronChef, BK Magazine; AroiMakMak hot-link blocked)
- WebP + srcset + lazy + LCP preload — **PASS** (64 webp variants, hero preloaded)
- 6+ brand-coherent animations — **PASS** (8 shipped)
- 4+ structural moves — **PASS** (7 shipped)
- Bilingual TH/ZH/EN — **PASS** (Thai gloss in hero, Chinese throughout, three scripts at full weight)
- JSON-LD CafeOrCoffeeShop + department for second branch — **PASS**
- robots + sitemap + 404 + favicon — **PASS**
- 44x44 tap targets — **PASS**
- prefers-reduced-motion — **PASS**
- @supports gate on background-clip:text — **PASS** (Mother-Roaster gradient-text bug avoided; espresso fallback)
- No invented founder names — **PASS** (kept to verified phrasing "two interior designers + a food stylist" / "team behind Meat Bar 31")

## What makes this distinctive vs the last build (Stockroom)

Stockroom was Scandi-shophouse-soft, espresso-and-linen. Lhong Tou is the polar opposite register — oriental warmth, oxblood and brass against deep ink, neon-amplified Chinese lettering as the signature beat. Where Stockroom's brand-coherent animation was a slow sun-roof beam, Lhong Tou's is a literal **double-decker stack reveal** — the hero photo splits into two horizontal slabs (the top and bottom decks of the bunk seating) that nudge apart on load. The wordmark moment doubles up: LHONG TOU in modern serif with the interior photo bleeding through the letters, and 龙头 below in massive red Noto Serif SC. Section labels are stamped in numbered eyebrows with Chinese subtitles (№ 02 · 起源 · The Origin). Menu tiles use a colour-coded bento that rhythmically alternates cream / red / ink / gold rather than the safe cream-on-cream grid. Even the favicon's a tiny red 龙 stamp on ink.

## Audit docs

See `AESTHETICS_AUDIT.md`, `FUNCTIONALITY_AUDIT.md`, `PERFORMANCE_AUDIT.md` for the deep dives.
