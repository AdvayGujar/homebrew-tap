# homebrew-tap

Homebrew formulae for [AdvayGujar](https://github.com/AdvayGujar)'s tools.

## walle

A Linux-style wallpaper picker for macOS —
[AdvayGujar/walle](https://github.com/AdvayGujar/walle).

```sh
brew install AdvayGujar/tap/walle
```

The formula builds from source, so it supports Apple Silicon and Intel Macs alike. It needs
macOS 14 (Sonoma) or later and a Swift 6 toolchain (Xcode 16 or the matching Command Line
Tools).

Then point it at a directory of images:

```sh
walle add ~/Pictures/Wallpapers
walle cache        # optional; makes the picker open instantly
walle doctor       # checks the install end to end
```

A bare `walle` opens the picker. Hotkey setup with
[skhd](https://github.com/koekeishiya/skhd) and the full command list are in the
[project README](https://github.com/AdvayGujar/walle#readme).

Updating:

```sh
brew update
brew upgrade walle
```
