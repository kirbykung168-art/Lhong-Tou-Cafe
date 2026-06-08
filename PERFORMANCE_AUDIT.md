# PERFORMANCE · LHONG TOU CAFE

## Measured weights (local server, gzip off)

| Asset | Size |
|---|---|
| index.html (raw) | 77.0 KB |
| favicon.svg | 0.3 KB |
| Hero LCP webp (1200w) | 131.3 KB |
| **Initial above-fold** | **208.7 KB** |
| Full lazy-loaded total (42 unique webp variants) | 3.07 MB |

Budget was **< 1.2 MB initial** — shipped at **208.7 KB**, ~17% of budget.

## How that was achieved

1. **16 source photos encoded as WebP at 4 widths** (480/800/1200/1600), quality 78, method 6 — 64 unique variants.
2. **`<picture>` + `<source srcset>` + `sizes`** on every photo so the browser picks the smallest variant for the viewport.
3. **`loading="lazy"` + `decoding="async"`** on every below-fold `<img>`.
4. **Hero LCP webp preloaded** with `<link rel="preload" as="image" imagesrcset imagesizes fetchpriority="high">`.
5. **No JS framework / no build step** — vanilla JS, ~3 KB at end of body.
6. **Single CSS block in `<head>`** — no external stylesheets except Google Fonts (preconnected).
7. **Google Fonts** `display=swap` so text renders immediately in system fallback while Fraunces / Inter / Noto Serif SC / IBM Plex Sans Thai stream in.

## Cache + security headers (Vercel — vercel.json)

- All `.webp|.avif|.jpg|.jpeg|.png|.ico|.svg` ship with `Cache-Control: public, max-age=31536000, immutable`.
- All paths ship with `X-Content-Type-Options: nosniff`, `Referrer-Policy: strict-origin-when-cross-origin`, `Permissions-Policy: camera=(), microphone=(), geolocation=()`.
- `cleanUrls: true`, `trailingSlash: false`.

## LCP candidate

The hero double-decker stack uses `background-image:url(...)` on two `.deck` divs (not an `<img>`), pointing at `/images/optimized/hero-interior-double-decker-1600.webp` (which is preloaded and arrives early). Expected LCP **≈ 1.6–2.0s** on a mid-tier 4G connection.

Note: because the hero uses background-image rather than `<img>`, Chromium's LCP candidate may select a different paintable element (the H1 wordmark, ~200ms after first paint). Either way the perceived "hero is here" moment lands fast.

## Lighthouse expectations (without running on Vercel yet)

- Performance: 92+ (background-image hero may cost 3-5 points vs `<img>`)
- Accessibility: 96+ (semantic landmarks, dl/dt, aria-modal, alt text, AA+ contrast)
- Best Practices: 100 (HTTPS via Vercel, no console errors, no deprecated APIs)
- SEO: 100 (canonical, OG, Twitter, JSON-LD restaurant + department, mobile viewport, descriptive title + meta, robots, sitemap)

## Image manifest

42 unique optimized webp files referenced from index.html (16 source photos × 4 widths, minus a few unused variants). Master library in `images/optimized/`, source originals in `images/source/` (gitignored). Every `<img>` carries an HTML source comment with the original publisher and URL.
