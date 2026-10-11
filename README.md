# PadCanvas for Homebrew

Publisher-maintained Homebrew cask for [PadCanvas](https://padcanvas.app): draw and annotate over your Mac screen from a phone, tablet or browser.

## Install

With [Homebrew](https://brew.sh) already installed:

```sh
brew install --cask ibrahim-sowunmi/padcanvas/padcanvas
```

Requires an Apple silicon Mac (M1 or later) running macOS 14 Sonoma or later. The cask downloads the same Developer ID signed, Apple-notarised app as the official website and verifies its SHA-256 checksum. Homebrew installs it in `/Applications` by default.

PadCanvas is a release preview. Installing through Homebrew does not change its trial or subscription terms; see [pricing and requirements](https://padcanvas.app/download). The companion's App Store availability is listed there too. Browser controllers work on the same local network.

Open PadCanvas after installing and follow its permission prompts. See the [setup guide](https://padcanvas.app/getting-started).

### Existing installations

If PadCanvas is already installed manually, save your work and quit it first. Keep your existing copy as a backup outside the destination Applications folder before installing with Homebrew. Do not use `--force` to overwrite a running copy. Saved drawings and account data are not removed by this cask.

For an intentional per-user installation, use `--appdir="$HOME/Applications"`. Use one installation location consistently.

## Update

```sh
brew update
brew upgrade --cask ibrahim-sowunmi/padcanvas/padcanvas
```

Save your drawing and quit PadCanvas before updating. Updates become available when the publisher updates this tap.

From version 1.0 (30), PadCanvas also updates itself: when it offers a new version, click Install and Restart. You can use either way. If PadCanvas has already updated itself, `brew upgrade` may download the same version again, which is harmless.

## Uninstall

```sh
brew uninstall --cask padcanvas
```

This removes the application, preserving drawings, projects, preferences and account data. It does not cancel a paid plan; manage that through your PadCanvas account.

## Maintaining a release

1. Publish the signed, notarised and stapled Mac ZIP at an immutable, versioned URL on `padcanvas.app`.
2. Download that public ZIP and verify its SHA-256 and bundled version/build against the release manifest. Do not use a development-signed build.
3. Update `version` (`marketing-version,build`) and `sha256` in `Casks/padcanvas.rb`.
4. Run `brew style Casks/padcanvas.rb`, `brew audit --cask ibrahim-sowunmi/padcanvas/padcanvas`, and `brew fetch --cask ibrahim-sowunmi/padcanvas/padcanvas` from a tapped checkout. Test installation on a clean Mac or in an isolated application directory.
5. Commit and push the cask change. Never replace a previously published ZIP with different bytes at the same URL.

The cask doesn't declare `auto_updates true` yet, although 1.0 (30) and later update themselves. With that flag, `brew upgrade` skips the app, and installs from 1.0 (28) and earlier, which can't update themselves, would stay behind. Add it once most installs are on 1.0 (30) or later.

This tap distributes installation metadata only. PadCanvas's application terms remain on [padcanvas.app](https://padcanvas.app/terms).
