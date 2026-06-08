# LHONG TOU CAFE — Mobile Audit (iPhone 14, 390×844, dpr 3)

Pre-push CSS audit of the v2 build. **Live verification at `https://lhong-tou-cafe.vercel.app` is pending the git push (blocked locally by OneDrive `.git/index.lock` — see CHANGES.md).** Items marked `TBD-LIVE` will be re-verified once the live URL is reachable; bugs found then will be patched and the file updated.

## CSS-level checks (verified from source)

| section | expectation | source review |
|---|---|---|
| Topbar | nav links collapse, status pulse hides, brand mark + ≡ stay visible | `@media (max-width:680px) .nav-links{display:none} .nav-toggle{display:inline-grid} .topbar-status{display:none}` ✓ |
| Hero seal | scales to 74vw (≈ 289px on 390 viewport) — more monumental than desktop | `.seal{--seal-size:74vw}` inside `@media (max-width:680px)` ✓ |
| Hero meta row | 5-col grid collapses to single column | `.hero-meta{grid-template-columns:1fr;gap:12px;text-align:center}` ✓ |
| Manifesto 7/5 spread | stacks to single column | `@media (max-width:1000px) .manifesto-inner{grid-template-columns:1fr}` ✓ |
| Signboards | 3-up → 1-up with 48px gap | `.boards{grid-template-columns:1fr;gap:48px}` ✓ |
| Branch tabs | shrink to fit | `.branch-tab{padding:8px 14px;font-size:11px}` at 680px ✓ |
| Branch pane | photo + info stack | `.branch-pane[data-active]{grid-template-columns:1fr;gap:32px}` ✓ |
| Gallery arc rows | sticky labels become inline; photos overlap and tilt for stacked-polaroid feel — *the mobile reward* | `.arc-row{grid-template-columns:1fr;gap:14px} .arc-row .label{position:static}` + `.arc-row{margin-top:-12px} .arc-photo{transform:rotate(-.4deg)} .arc-row:nth-child(even) .arc-photo{transform:rotate(.5deg)}` ✓ |
| Press cards | 3-up → 2-up at 1000px → 1-up at 680px | `.press-grid{grid-template-columns:1fr 1fr}` then `{grid-template-columns:1fr}` ✓ |
| Visit cards | 2-up → 1-up | `.visit-grid{grid-template-columns:1fr;gap:24px}` ✓ |
| Footer | 4-up → 2-up → mark row spans full width | `.foot-grid > div:first-child{grid-column:1/-1}` ✓ |
| Scroll progress (vertical signboard) | hidden on mobile to declutter | `.scroll-prog{display:none}` at 1000px ✓ |
| Reduced motion | seal lands instantly, brush underlines resolved, lanterns dim | `@media (prefers-reduced-motion: reduce){*{animation:none !important}...}` ✓ |
| Tap targets | btn primary/ghost padding 14×22; branch tabs 14×22 (or 8×14 at small) | min height ≈ 38–44 ✓ — `.btn` is 44 with line-height factored; `.nav-toggle` explicit 44×44 |
| Lightbox | full viewport at any size; close pill is tap-friendly | padding 5vh 5vw, close pill is 10×18 + 11px ≈ 36+ ✓ |

## Items that need LIVE verification

- **TBD-LIVE — Seal Reveal sequence timing on mobile Safari.** iOS Safari's CSS cubic-bezier overshoot can clip differently from Chrome. Need to view at 390×844 in real Safari (use Vercel link from iPhone) and confirm the overshoot isn't visually jarring at small viewport.
- **TBD-LIVE — `filter:url(#stamp-bleed)` rendering perf.** The SVG turbulence+displacement filter is referenced from CSS by ID; if iOS Safari fails to apply (some older versions had bugs), the seal still renders fine (just without the irregular ink edge), but verify the edge is showing.
- **TBD-LIVE — Cormorant Upright + Noto Serif Thai font load behaviour.** Fonts are loaded with `display=swap` so FOIT shouldn't happen, but verify the fallback `Georgia` / `-apple-system` for Thai doesn't shift dramatically.
- **TBD-LIVE — Easter egg keypress on mobile.** Mobile keyboards don't fire `keydown` for IME input the same way; the egg likely won't fire on mobile without a software keyboard typing into a focused input. *Design intent: the egg is a desktop discovery.*
- **TBD-LIVE — Stacked-polaroid overlap visual at the gallery section.** `.arc-row{margin-top:-12px}` should pull each frame up 12px to overlap. Confirm photos don't visually clash.
- **TBD-LIVE — `hero` `min-height:90vh` on mobile vs `min-height:calc(100vh - 60px)` on desktop.** 90vh + dynamic toolbar on Safari can cause the seal to feel cramped near the top; if so, increase to `100vh - 60px` with safe-area inset.

## Known CSS-level caveats noted up front

- **Backdrop blur** in topbar (`backdrop-filter:blur(14px) saturate(1.1)`) — supported in modern Safari/Chrome. Falls back to a translucent solid background which still looks acceptable.
- **`background-clip:text`** — not used in this build (deliberately, vs v1 wordmark-bleed). No need to gate.
- **`writing-mode:vertical-rl`** in scroll-progress glyph — supported across modern browsers; hidden on mobile anyway.
- **`prefers-reduced-motion`** path verified to neutralize all transform/opacity transitions; the page is fully readable without motion.
- **`em`-only emphasis kept light** — the verbatim BK Mag quote uses italic; no other italic-em pattern repeated across the site.

## Verification commands once live

```bash
# Open Chrome MCP at iPhone 14 viewport (390×844)
# Take screenshots: hero seal, manifesto, signboards (one per board), branches (per tab), gallery arc, press, visit, footer
# Test easter egg from desktop separately
# Test reduced-motion via Chrome devtools emulation
```

## Status

- CSS-level checks: **PASS**
- Live screenshots: **PENDING PUSH**
- After push: navigate to `https://lhong-tou-cafe.vercel.app` via Chrome MCP at 390×844, screenshot, fix any drift, commit again.
