# LHONG TOU Cafe (龙头 / หลงโถว) — Yaowarat, Bangkok

Single-page tribute to LHONG TOU, the designer-led oriental dim-sum cafe at the head of Yaowarat Road. Two branches, double-decker climbing-frame seating, hipster dim sum that BK Magazine called "making dim sum hip again."

## Brand brief — verified before code

- **Name:** LHONG TOU (Lhong Tou Cafe). Chinese: 龙头. Thai: หลงโถว. "Lhong Tou" means **Dragon's Head** in Teochew; the cafe sits at the Chalermburi intersection — the literal **head** of Yaowarat Road.
- **Founders:** A team of two interior designers + a food stylist, off the back of Sukhumvit steakhouse Meat Bar 31 (BK Magazine, Jul 2018). Time Out Bangkok independently corroborated.
- **First opened:** July 2018 (AroiMakMak).
- **Concept:** "Hipster dim sum" — espresso & tea paired with Chinese-influenced bites. Double-decker climbing-frame seating born from shophouse space constraints.

## Branches — verified

### № 01 · Yaowarat (flagship)
- **Address:** 538 Yaowarat Rd, Samphanthawong, Bangkok 10100
- **Hours:** Daily 09:00–20:00 (Time Out 2022) — earlier sources cite 08:00–22:00; presenting Time Out figures with soft "subject to change" gloss.
- **Phone:** +66 64 935 6499

### № 02 · The Market Bangkok
- **Address:** 111 Ratchadamri Rd, G Floor (next to CentralWorld, near BTS Chidlom)
- **Hours:** Daily 10:00–22:00 (AroiMakMak 2019)
- **Phone:** +66 64 935 6588

## Verified menu items + prices (THB)

- **Egg Lava Bun** ฿29 — *signature* — crispy flaky exterior, salted-egg lava
- **Mini BBQ Pork Bun** ฿49
- **Lhong Tou Shu Mai** ฿69 — *signature* — plump pork dumplings, sweet-savoury sauce
- **Mala Fried Chicken** ฿79 (BK Mag) or ฿70 (Daniel Food Diary) — "rich and numbing"
- **Prawn Spring Rolls** ฿59
- **Wanton Soup** ฿59
- **Mandarin Orange Cake** ฿80
- **Chestnut Tart** ฿135
- **Chinese Breakfast Set** ฿129 — congee + 8 sides (boiled peanuts, gun chiang sausage, dried shredded pork, sweet radish)
- **Thai Milk Tea** ฿75 — topped with kanom toob tub (peanut-sesame snack)
- **Dirty** (espresso + cold milk) ฿85
- **Rose Tea pot** ฿180
- **Chinese Lychee Wine** ฿240

Per-person spend: ฿150–400 typical.

## Aesthetic — five-word brief

Yaowarat-neon, designer, oriental, climbing-frame, photogenic.

## Palette (sampled from BK Mag cover + Time Out interior shots)

- ink #0c0703 (deepest black-brown)
- oxblood #722121
- red (Chinese vermillion) #c5331e — neon 龙头
- jade #2f5d4a — neon Lhong Tou
- brass #c9a063
- gold #e6c068
- wood #5c3a1f (teak)
- cream #f4ede0
- paper #faf6ee
- soft #b7a384

Contrast: ink/paper 17:1, red/cream 4.7:1, gold/ink 9.2:1 — all AA+.

## Typography

- **Display serif:** Fraunces — modern soft serif with optical sizing (oriental restaurant gravitas without going kitsch).
- **Body sans:** Inter.
- **Chinese display:** Noto Serif SC — for 龙头 wordmark.
- **Thai:** IBM Plex Sans Thai — for หลงโถว.
- Mono: system mono for prices and ticker stamps.
- Fallback stacks shipped per stack; failing CDN doesn't break layout.

## "Not boring" structural moves shipped

1. Asymmetric editorial hero — interior bleed left, type-stack right
2. Bento dim-sum menu — irregular grid with signature shu mai 2x cell
3. **Sticky branch switcher** — pin during scroll, Yaowarat ↔ The Market
4. **Type-through-photo wordmark** — huge 龙头 LHONG TOU with interior photo bleeding through via background-clip:text (with espresso fallback)
5. Wax-seal red-stamp accent on primary CTA
6. Vertical oriental-signage scroll-progress indicator pinned to right gutter
7. Lightbox gallery for double-decker shots

## Brand-coherent animations shipped (8)

1. **Double-decker stack reveal** — hero photo splits into two horizontal slabs that nudge apart on scroll
2. **Lantern glow pulse** — radial-gradient orbs breathe in hero corner
3. **Steam wisps** — CSS keyframe wisps rising from menu cards on hover
4. **Vertical Chinese-signage scroll indicator** — 龙头 vertical strip with fill on scroll
5. **Red-seal stamp** press on primary CTA hover
6. **Neon flicker** — tiny opacity flicker on the red 龙头 + green Lhong Tou hero glyphs
7. **Hand-drawn nav underlines**
8. **Dim-sum-basket lift** on menu card hover

All gated on `prefers-reduced-motion`.

## Hard rules — pass list

- "Lhong Tou" (not "Long Tou" / "Lhongtou" / "Long Tao") used consistently
- Chinese 龙头 + Thai หลงโถว both render at full weight
- "Cafe" (no acute accent) throughout
- Real photos only — every <img> has an HTML source comment
- WebP + srcset + lazy + LCP preload from day one
- robots.txt + sitemap.xml + 404.html + favicon
- JSON-LD CafeOrCoffeeShop schema
- 44×44 tap targets on mobile
- prefers-reduced-motion respected
- Mobile 390 polish round before push
- Mother-Roaster gradient-text bug avoided via @supports gate on background-clip:text

## Deploy

- Repo: github.com/kirbykung168-art/lhong-tou-cafe
- Live: lhong-tou-cafe.vercel.app
