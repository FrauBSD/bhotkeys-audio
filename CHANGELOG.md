[//]: # ($FrauBSD: bhotkeys-audio/CHANGELOG.md 2026-10-12 11:10:20 -0700 Devin Teske $)

# Changelog

Newest first. Each section is a git tag; the bullets are what landed
in that tag (from the previous tag, or from the start of the
repository for 1.0).

## 1.2 (2026-10-12)

- on the combined sink, `volume-osd up` steps past 100% and
  stops at 153%

## 1.1 (2026-10-05)

- `audio-output-toggle` calls `bosd` for the slot gauge without
  skipping the call or discarding its output

## 1.0 (2026-10-04)

- `fn-vol-down`, `fn-vol-up`, and `fn-mute` run `volume-osd`
- `fn-audio-out` runs `audio-output-toggle` (Fn+F12 / XF86AudioMedia)
- man pages for `volume-osd`, `audio-output-toggle`,
  `audio-output-osd`, and `audio-output-devices`
