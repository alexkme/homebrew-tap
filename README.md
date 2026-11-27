# homebrew-tap

Homebrew formulae for [alexkme](https://github.com/alexkme)'s tools.

## memtree

A lightweight macOS menu bar memory monitor with a built-in CLI. [Source and docs](https://github.com/alexkme/memtree).

Add the tap, then install by the short name:

```sh
brew tap alexkme/tap
brew install memtree
```

Or do it in one command:

```sh
brew install alexkme/tap/memtree
```

Then start the app:

```sh
open "$(brew --prefix memtree)/Memtree.app"
```

Homebrew 6 and later asks you to trust third-party taps. The one-line install trusts only this formula, not the whole tap. If you added the tap first, you may need `brew trust --formula alexkme/tap/memtree` before the short name works.

Requirements: Apple Silicon, macOS 26 or later, Xcode 26. The formula builds from source, so the app carries no download quarantine flag.

Upgrade with `brew upgrade alexkme/tap/memtree`. memtree itself only tells you when a new release exists; it never replaces itself.

### Releases

`Formula/memtree.rb` still has a placeholder `url` and `sha256`. Those values are filled in by `scripts/release.sh` in the memtree repository on the first release, and rewritten on later ones. Do not edit those two lines by hand until then; `brew install` will not succeed until the first release has been published.

## License

The formulae in this tap are under the MIT License, like memtree.
