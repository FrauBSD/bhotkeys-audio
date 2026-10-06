[//]: # ($FrauBSD: bhotkeys-audio/README.md 2026-10-05 17:36:32 -0700 Devin Teske $)

# bhotkeys-audio

Volume, mute, and output-select keys for FreeBSD X11.
`volume-osd` moves the active output. `audio-output-toggle` cycles
speakers, headphones, and all outputs. bosd paints the gauge or glyph.

Home: [FrauBSD/bhotkeys-audio](https://github.com/FrauBSD/bhotkeys-audio)

## Requirements

- `bhotkeys`
- `bosd`
- PulseAudio for the combined output; mixer for a single sink

## Build / install

```sh
make install    # PREFIX=/usr/local by default
```

Installs `volume-osd`, `audio-output-toggle`, `audio-output-osd`,
and `audio-output-devices` into `${PREFIX}/bin`. Plugins
`fn-vol-down`, `fn-vol-up`, `fn-mute`, and `fn-audio-out` go to
`${PREFIX}/share/bhotkeys/plugins.d`. Volume, mute, and audio
output are offered at the greeter. Some desktops ship their own
volume keys and leave `fn-mute`, `fn-vol-down`, and `fn-vol-up`
disabled there.
