# homebrew-tap

Homebrew tap for [oxi](https://github.com/maziluiosif/oxi), a native, local-first coding agent.

## Install

### macOS (Apple Silicon)

```sh
brew tap maziluiosif/tap
brew install --cask oxi
```

This installs `oxi.app` in `/Applications` and exposes the `oxi` command.

oxi is ad-hoc signed but not Apple-notarized, so macOS quarantines it. Clear the
quarantine attribute once after installing:

```sh
xattr -cr /Applications/oxi.app
```

### Linux (x86_64)

```sh
brew tap maziluiosif/tap
brew install --cask oxi
```

For Windows or manual installation, use the [GitHub releases](https://github.com/maziluiosif/oxi/releases).

The Cask is updated automatically by the release workflow in the main repository.
