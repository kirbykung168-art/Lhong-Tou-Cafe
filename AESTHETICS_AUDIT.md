# AESTHETICS · LHONG TOU CAFE

## Brand register

LHONG TOU's actual register is best described as **designer-Yaowarat**:

> "The team behind Sukhumvit steakhouse Meat Bar 31 has headed to Chinatown for a new tea and coffee shop … the cafe amplifies Yaowarat's neon signage with its own Chinese lettering that screams in electric red and green at passersby. Traditional ornaments such as peacock, bird's nests and swallows are kitsch but in-keeping."
> — BK Magazine, Jul 2018

So the visual language has to do three things:
1. Read clearly as **oriental** without slipping into kitsch
2. Honour the **neon** — Chinese red + jade green pop against deep ink
3. Carry an **editorial / designer** sensibility — restrained typography, generous whitespace, none of the wood-and-lantern-cliche template

## Palette (sampled from BK Mag cover + Time Out interior shots)

| Token | Hex | Role |
|---|---|---|
| ink | #0c0703 | Backdrop for dark sections, nav |
| espresso | #1c0f08 | Mid-tone for borders / cards |
| wood | #5c3a1f | Body type on light, eyebrows |
| oxblood | #722121 | Deep red for hover/accent layers |
| red | #c5331e | The neon 龙头 — primary brand accent |
| jade | #2f5d4a | Neon Lhong Tou — secondary |
| brass | #c9a063 | Warm gold, secondary backgrounds |
| gold | #e6c068 | Status/highlight, eyebrows in dark sections |
| cream | #f4ede0 | Card backgrounds, type on dark |
| paper | #faf6ee | Page background |
| soft | #b7a384 | Muted body type on dark |

Contrast checks (WCAG): ink/paper 17:1, red/cream 4.7:1, gold/ink 9.2:1 — all AA+.

## Typography

- **Display serif:** Fraunces (Google, opsz 9–144) at 300 weight — modern soft serif with oriental-restaurant gravitas without descending into Wonton-font kitsch
- **Body sans:** Inter — clean, legible
- **Chinese display:** Noto Serif SC (weights 400/500/700/900) — used for 龙头 wordmark, eyebrows, menu Chinese names, the favicon 龙
- **Thai display:** IBM Plex Sans Thai — for the หลงโถว gloss
- **Mono:** system mono — eyebrows / prices / number stamps

System fallbacks shipped per stack so failing CDN doesn't break layout.

## Structural moves shipped ("not boring")

1. **Asymmetric editorial 7/5 hero** — photo bleeds left with double-decker slab reveal, type-stack right with Chinese wordmark stacked above the English headline
2. **Bento dim-sum menu** — irregular 6-column grid mixing photo-tiles (4) and price-tiles (7) with a yellow Chinese Breakfast Set callout breaking rhythm
3. **Sticky branch switcher** — Yaowarat ↔ The Market with side-by-side cards on dark backdrop
4. **Type-through-photo wordmark** — huge LHONG TOU with interior-detail photo clipped through letters via `background-clip:text` (gated on `@supports`, brass fallback), 龙头 below in massive red Noto Serif SC
5. **Wax-seal red-stamp accent** — on primary CTA hover, a `::after` pseudo with the 龙 character stamps on rotated -8°
6. **Vertical Chinese-signage scroll progress** — pinned to right gutter, 龙头 vertical strip with a red fill that tracks scroll position
7. **Lightbox gallery** for full-size interior + dim-sum photos

## Brand-coherent animations (8)

| # | Animation | Where | Implementation |
|---|---|---|---|
| 1 | **Double-decker stack reveal** | Hero photo | Two `.deck` divs (top/bottom) translate from -2% / +2% to 0 on `.loaded` class |
| 2 | **Lantern glow pulse** | Hero | Three radial-gradient orbs in `mix-blend-mode:screen` with staggered `lanternBreath` keyframes |
| 3 | **Mint-on-gold dot pulse** | Topbar "Open now" | Box-shadow expansion ring at 2.4s ease-out infinite |
| 4 | **Receipt-tape marquee** | Top bar + signature row | linear-x translateX at 40s / 46s |
| 5 | **Wax-seal stamp press** | Primary CTA hover | `::after` rotates from `rotate(-12deg) scale(0)` → `rotate(-8deg) scale(1)` |
| 6 | **Neon flicker** | Hero 龙头 wordmark | `flicker` keyframes — subtle opacity dips at 88%, 90%, 92%, 94% of the cycle |
| 7 | **Steam wisps** | Menu photo tiles on hover | Radial-gradient pseudo translates upward and fades in |
| 8 | **Hand-drawn nav underline** | Nav links | `::after` width 0 → 100% over 0.5s |
| Bonus | Vertical Chinese-signage scroll progress | Right gutter | Vertical bar with `--p` custom property updated from scroll JS |

All gated on `prefers-reduced-motion: reduce` — animations and transitions collapse to 0.001ms when reduced motion is set.

## Editorial details

- Numbered section labels in mono with Chinese subtitles: **№ 02 · 起源 · The Origin**, **№ 04 · 菜单 · The Menu**, **№ 05 · 两家店 · Two outlets**, etc.
- Drop cap on the manifesto in red Fraunces 700
- Pull-quote in italic Fraunces with red left border + BK Magazine attribution
- The favicon: red 龙 character on ink rounded-square with a tiny gold dot at top-right
- The 404 page leans into the brand — "迷路了 · Off the menu"
- Menu callout tile in gold for the Chinese Breakfast Set with Chinese subtitle 中式早餐
- Open/closed status pill in gold + flickering dot ring
- A literal "since 2018" timestamp pinned to the right gutter (vertical-rl, mono)
