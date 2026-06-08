# FUNCTIONALITY · LHONG TOU CAFE

## What works

### Navigation
- Fixed dark topbar (utility) with live open/closed status pill and Chinese-trilingual ticker (龙头 · prices · hours)
- Fixed light nav below it with brand wordmark (龙 mark + LHONG TOU. wordmark), 6 anchors, red-dotted "Get directions" primary CTA
- On scroll past 24px, nav gains paper background + bottom rule + backdrop-blur
- Mobile: hamburger toggle reveals dark full-bleed sheet with serif anchor list; closes on tap

### Live status logic
- JS computes weekday + minutes-since-midnight
- Yaowarat hours (09:00–20:00 daily) drive the topbar pill: "Open now · until 20:00" / "Opens 9:00 today" / "Closed · opens 09:00 tomorrow"
- Today line in hero meta reflects current weekday + range
- Hours table highlights today's row with gold tint

### Anchor scroll
- All section IDs verified: #top, #about, #menu, #branches, #gallery, #press, #visit
- Browser's native smooth scroll (`scroll-behavior: smooth`) handles the in-page jumps — no JS hijacking, native scroll wheel works everywhere

### CTAs
- Primary: **Get directions** to the Yaowarat flagship via Google Maps directions URL (`https://www.google.com/maps/dir/?api=1&destination=...`)
- Secondary: **Follow on IG** (@lhongtoucafe_official), **Call** (tel:+66649356499)
- Visit-section flagship CTA opens Google Maps; second branch in branches section opens the Market Bangkok directions URL with its own phone

### Branch switcher (sticky branch section)
- Two side-by-side cards
- Each has its own photo, address, hours, phone, and "Get directions" / "Call" buttons
- The flagship card carries a "(Time Out, 2022)" italic gloss on hours since multiple sources disagree
- The Market branch is labelled with the AroiMakMak 2019 source

### Lightbox
- Each gallery `<button class="gcell lb">` carries a `data-src` to the 1600w webp
- Click → modal opens; close via backdrop, Close ✕ chip, or Escape key
- Lightbox is `role="dialog" aria-modal="true"` with `aria-label`

### Reduced motion
- `prefers-reduced-motion: reduce` collapses every `animation-duration` and `transition-duration` to 0.001ms
- Marquees, lanterns, flicker explicitly disabled
- Double-decker slab reveal still triggers but the slabs jump to their final position rather than animating

### Accessibility
- Semantic landmarks (`<header>`, `<nav>`, `<section>`, `<footer>`)
- `<dl>` / `<dt>` / `<dd>` for hero meta
- Every `<img>` has descriptive alt text + width/height
- `aria-modal` on lightbox, `aria-label` on icon buttons
- Min tap target 44×44 on `.btn`, 44×44 on hamburger toggle
- Native focus styles preserved on `:focus-visible` (browser default)
- Color contrast all AA+

### Browser support
- @supports gates the background-clip:text wordmark photo bleed; older browsers see solid brass
- `<picture>` + `<source>` falls back to `<img src>` in browsers without WebP (very few)
- No JS framework; ~3 KB raw vanilla JS at end of body

## Verified outbound links

| Destination | URL |
|---|---|
| Instagram | https://www.instagram.com/lhongtoucafe_official/ |
| Facebook | https://www.facebook.com/Lhongtouyaowaratofficial/ |
| BK Magazine review | https://www.bkmagazine.com/restaurant/lhong-tou-cafe/ |
| LadyIronChef | https://www.ladyironchef.com/2019/07/lhong-tou-cafe/ |
| Time Out | https://www.timeout.com/bangkok/restaurants/lhong-tou |
| Daniel Food Diary | https://danielfooddiary.com/2019/09/03/lhongtoucafe/ |
| AroiMakMak | https://aroimakmak.com/lhong-tou-cafe/ |
| Tripadvisor | https://www.tripadvisor.com/Restaurant_Review-g293916-d15592164-Reviews-Lhong_Tou_Cafe-Bangkok.html |
| Google Maps directions | https://www.google.com/maps/dir/?api=1&destination=Lhong+Tou+Cafe+538+Yaowarat+Road+Bangkok |
| tel: | +66 64 935 6499 (Yaowarat), +66 64 935 6588 (The Market) |

## What was intentionally NOT shipped

- **Online ordering** — not offered per any verified source. No invented GrabFood / LINE MAN integration.
- **Specific founder names** — Meat Bar 31 ownership was the only verifiable provenance; no individual names invented.
- **Real Tripadvisor logo image** — used wordmark text for press logo list (avoids unlicensed logo use).
- **Founding-date precision** — left as "July 2018" per AroiMakMak with no specific day.
- **Hours discrepancy** — sources disagree (BangkokMenu says 08:00–22:00, Time Out 2022 says 09:00–20:00). Used Time Out (most recent verified) and italic-glossed the source in the branch card.
