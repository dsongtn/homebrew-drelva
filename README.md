# Homebrew tap — Drelva Access (preview)

Public **gateway only**. This tap contains no private app, administrator credential or server secret. The package is a small opt-in utility; `drelva join` remains **server-disabled** until the separate public OAuth client registration and protected package entitlement API are configured.

## Install

```bash
brew tap dsongtn/drelva
brew install drelva
drelva version
drelva doctor
```

Homebrew is not preinstalled on macOS. This independent Git tap does not require acceptance into `homebrew/core`. Release downloads are pinned to the exact SHA-256 digests of published Drelva-only archives.

## Uninstall

```bash
brew uninstall drelva
brew untap dsongtn/drelva
```

The downloadable executable is an **unsigned development preview**. This is not an Apple-notarized application or official App Store listing, and it does not install software outside the current package manager.

[Public package feed](https://dsongtn.github.io/drelva-distribution/) · [Release](https://github.com/dsongtn/drelva-distribution/releases/tag/v0.1.1).
