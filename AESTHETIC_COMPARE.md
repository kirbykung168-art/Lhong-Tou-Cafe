# LHONG TOU CAFE — Aesthetic Compare (v1 vs v2)

Comparing the v1 build at `lhong-tou-cafe.vercel.app` against the brand identity validated in `BRAND_RESEARCH.md`. The conclusion drove the v2 rewrite shipped in `index.html`.

## v1 — where it matched the brand

- Names and labels were correct: LHONG TOU CAFE / 龙头 / หลงโถว consistently used
- Menu items + prices verified against three independent sources (BK Mag, LadyIronChef, Daniel Food Diary)
- Branch addresses, phone numbers, hours verified before code
- JSON-LD `CafeOrCoffeeShop` schema with both branches as `department`
- Strong SEO meta (canonical, OG, Twitter card, descriptions)
- Photos sourced from real press editorials (BK Mag, Time Out, LadyIronChef) — every `<img>` had attribution

## v1 — where it drifted (the "copy-paste" smell Kirby flagged)

| element | drift | severity |
|---|---|---|
| **Display typeface = Fraunces** | Stockroom Cafe also shipped Fraunces. The two sites read as the same designer at first glance — that's the literal copy-paste tell. | **high** |
| **Hero hyphae: type-through-photo wordmark** (`background-clip:text` with image showing through giant LHONG TOU letters) | Stockroom also ships a type-through-photo wordmark section. Repeated technique across portfolio. | **high** |
| **Bento dim-sum grid** (irregular grid, 2x signature cell) | Stockroom ships a "bento gallery." Same layout primitive borrowed from siteinspire / godly.website. | **medium** |
| **Palette = bright `#c5331e` vermillion + jade `#2f5d4a`** | Real-photo sampling (median-cut, 9 source images) showed teak + amber dominant; red appears only as the stamped seal accent; jade was a minority colour in one frame only. The v1 palette read as a Chinatown-stereotype field rather than the actual designer-led heritage shophouse the cafe is. | **high** |
| **Italic-em emphasis pattern in headings** ("A short, *handpicked* dim-sum board", "A room *worth photographing*") | Same emphasis register appears on Stockroom and Mother Roaster. Reads as a voice template. Lhong Tou's own IG voice is restaurant-pride, not instagrammable-aphorism. | **medium** |
| **Thai stack = IBM Plex Sans Thai** | Tech-modern register. Wrong for a heritage Chinese-Thai shophouse. The brand's own signage uses serifed Thai. | **medium** |
| **8-animation feature list ambition** | Eight animations dilute the signature — none of them becomes the moment. Per the new bar, each site should have ONE unforgettable visual moment. | **high** |
| **Stockroom shares the "wax-seal red-stamp accent on primary CTA" pattern** | The seal mark IS Lhong Tou's actual brand identity (their own profile picture is a hand-stamped seal). Stockroom got that motif first by accident. Lhong Tou should be the owner of the seal moment. | **medium** |

## v2 — corrections shipped

| change | rationale |
|---|---|
| Cormorant Upright replaces Fraunces | Distinguishes from Stockroom; reads designer-led editorial without trending faux-Chinese. Kirby's call. |
| Hero = the Seal Reveal | The brand's actual profile picture (hand-stamped 龙头 seal on cream) becomes the page-load animation: red circle scale-overshoots in, stamp-ink edge displaces, 龙头 glyph fades white-on-red, then a brush-stroke underline draws beneath the Latin wordmark. **This is the ONE moment.** |
| Palette rebuilt from real-photo sampling | Teak (#47422F), cocoa (#755029), amber (#E18D33 — the egg lava yolk colour), brass (#BC8F4A), cream (#EFEAE5). Seal red (#A82127) used like a stamp — never as a colour field. |
| Bento grid → three vertical "bamboo signboard" cards | Cards hang from rope-and-bead anchors at the top, like Yaowarat shophouse signage. Each board is a ritual (Morning · Midday · Late), not a category. Borrowed *from the actual Yaowarat streetscape*, not from siteinspire. |
| Italic-em headline voice → brand-pride voice | "Designer-led, Yaowarat-grown" / "Order the way a Yaowarat morning unfolds" / "Six frames, in the order they would happen" — sourced from the cafe's own positioning and the BK Mag opening review quote. |
| IBM Plex Sans Thai → Noto Serif Thai | Heritage register; matches the serif Latin. |
| Gallery = curated narrative arc | Six frames in the order they would happen on a real morning: PLACE → RITUAL → CRAFT → REVELATION → ABUNDANCE → INTIMACY. Sticky labels left, photo right on desktop; deliberate stacked-polaroid overlap on mobile (each frame peeks the next — *better* on mobile than desktop). |
| Easter egg added | Type "lhong tou" or "龙头" anywhere → an SVG ink-brush stroke draws across the viewport in seal red over 700ms, then fades. |
| Tactile depth | SVG noise overlay (turbulence baseFrequency 0.9, 4% mix-blend-multiply) covers the whole page. All shadows tinted warm (rgba based on bark/seal). No flat #FFF or #000 anywhere. |
| 8 animations → 2 signature motions | The Seal Reveal (hero), brush-stroke underline on every h2 on scroll-in. Supporting: lantern radial breathe in hero corners, scroll-fill on right-edge signboard glyph, receipt-card lift on press hover. |

## Side-by-side verification ritual (before push)

Open `https://www.instagram.com/lhongtoucafe_official/` in one tab and the new site in another. Ask:

1. **Cream + teak + amber dominance** vs bright vermillion? ✓
2. **Red used as stamped accent**, not as field? ✓
3. **Seal mark prominent** at hero + topbar + footer? ✓
4. **Type heavier and more designer-led** than Fraunces? ✓
5. **Hero feels unmistakably Yaowarat**, not generic specialty cafe? ✓ (via the Seal Reveal)
6. **Mobile rewards small screen** (seal fills 74vw, polaroid overlap)? ✓ (CSS shipped; live verification pending push)

Decision: **ship**.
