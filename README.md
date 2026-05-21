# homebrew-newfile

A Homebrew tap for [NewFile](https://github.com/mariusgm/newfile) — a 'New File' button for the macOS Finder.

## Install

```sh
brew tap mariusgm/newfile
brew install --cask newfile
```

## Upgrade

```sh
brew upgrade --cask newfile
```

## Uninstall

```sh
brew uninstall --cask newfile
brew untap mariusgm/newfile
```

## Why a personal tap?

NewFile is also pending submission to the official `homebrew/cask` repository, but that channel requires the source repo to clear a notability threshold (≥225 stars / ≥90 forks / ≥90 watchers). This tap exists so the cask is installable today, on the same `brew` workflow, while the main repo grows.

Once the upstream cask lands in `homebrew/cask`, this tap will either be retired or kept as a fallback channel.
