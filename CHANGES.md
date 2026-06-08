# LHONG TOU CAFE — Changes (v2 round)

Concise log of what changed and why. Methodology spec → `BRAND_RESEARCH.md`. Drift analysis → `AESTHETIC_COMPARE.md`. Mobile bugs + fixes → `MOBILE_AUDIT_lhong-tou-cafe.md` (written after live verification).

## index.html — rewritten from scratch (1332 lines)

Old: 1936 lines, Fraunces + IBM Plex Sans Thai + bright vermillion. Shared multiple aesthetic moves with Stockroom.

New: 1332 lines, built around the **Seal Reveal** as the one unforgettable moment.

### Major changes

- **Hero rebuilt** as the Seal Reveal (red wax-seal scales in with overshoot, ink-edge displacement, 龙头 fades, brush-stroke draws beneath the Latin wordmark). This is the page's ONE moment — every other element supports it.
- **Type system**: Cormorant Upright (display Latin) + Noto Serif SC (CJK) + Noto Serif Thai (display Thai) + Inter (body) + IBM Plex Mono (prices/IDs). Replaces Fraunces stack which was shared with Stockroom.
- **Palette rebuilt from photo sampling** (median-cut, 9 source images): teak-dominant + amber accents + seal red used only as stamp. Replaces v1's bright vermillion + jade.
- **Menu layout**: bento grid → three vertical "bamboo signboard" cards (Morning · Midday · Late), each hung from a rope-and-bead anchor. Derives from real Yaowarat shophouse signage, not from siteinspire patterns.
- **Gallery**: 4×3 grid → narrative arc — six frames in lived order (Place / Ritual / Craft / Revelation / Abundance / Intimacy) with sticky labels on desktop; stacked-polaroid overlap on mobile.
- **Easter egg added**: type `lhong tou` or `龙头` → SVG ink-brush stroke draws across the viewport in seal red over ~700ms, then fades.
- **Tactile depth**: SVG noise overlay (turbulence baseFrequency 0.9, ~38% multiply blend at body level) covers all surfaces. No flat #FFF/#000. All shadows tinted warm (bark/seal rgba).
- **Mobile parity**: seal scales to 74vw on phones (more monumental than desktop). Gallery frames overlap and tilt ±0.5° for stacked-polaroid feel that's better than the desktop sequence. Nav collapses to a single ≡ button. Status pulse hides on phones to declutter.
- **Verbatim brand voice** baked into the Visit lede and Origin section. Quote from BK Mag opening review (Jul 2018) used as quote block in Origin. Press section carries verified quotes only (BK Mag, Time Out Sereechai Puttes Sep 2022, LadyIronChef Melissa Teo Jul 2019).
- **Branch switcher** uses tabs with proper ARIA roles (tablist / tab / tabpanel) and the photo updates per branch.
- **Scroll progress** rendered as vertical Chinese signboard (龙头 vertical writing-mode) pinned to the right edge — fills seal red as you scroll.
- **JSON-LD, meta, OG, Twitter card** all preserved + updated theme-color to match new ink (#150B08).
- **Reduced-motion gated**: all keyframe animations, including the Seal Reveal cascade, resolve instantly under `prefers-reduced-motion: reduce`.

### Removed (stale v1 audit files)

- `AESTHETICS_AUDIT.md` — described the v1 build that no longer exists
- `AUDIT.md`, `FUNCTIONALITY_AUDIT.md`, `PERFORMANCE_AUDIT.md` — same

### Added

- `BRAND_RESEARCH.md` — Round-2 brand brief with verified IG handle, sampled palette, voice register, the ONE moment decision, motion language, easter egg, mobile-parity moves, drift table.
- `AESTHETIC_COMPARE.md` — v1-vs-v2 drift table + rationale.
- `CHANGES.md` — this file.
- `MOBILE_AUDIT_lhong-tou-cafe.md` — written after live URL verification.

## Photos

All photos kept from v1 (already sourced from BK Magazine, Time Out Bangkok, LadyIronChef — every `<img>` carries an HTML source comment). No new IG downloads needed; the curated narrative arc uses existing assets in story order.

## Repo + deploy

- Repo: `github.com/kirbykung168-art/Lhong-Tou-Cafe`
- Live: `https://lhong-tou-cafe.vercel.app` (auto-deploys from main)
- Push process: Windows `push-to-github.bat` (Linux sandbox blocked by OneDrive `index.lock` — surface to Kirby)
