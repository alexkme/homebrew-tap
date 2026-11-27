# homebrew-tap

Homebrew formulae for [alexkme](https://github.com/alexkme)'s tools.

## memtree

A lightweight macOS menu bar memory monitor with a built-in CLI. [Source and docs](https://github.com/alexkme/memtree).

Install with one command:

```sh
brew tap alexkme/tap && brew trust alexkme/tap && brew install memtree
```

Then start the app:

```sh
open "$(brew --prefix memtree)/Memtree.app"
```

Homebrew 6 and later asks you to trust third-party taps, which is what `brew trust alexkme/tap` does. It trusts every formula in this tap, now and later.

Requirements: Apple Silicon, macOS 26 or later, Xcode 26. The formula builds from source, so the app carries no download quarantine flag.

Upgrade with `brew upgrade alexkme/tap/memtree`. memtree itself only tells you when a new release exists; it never replaces itself.

### Releases

`Formula/memtree.rb` still has a placeholder `url` and `sha256`. Those values are filled in by `scripts/release.sh` in the memtree repository on the first release, and rewritten on later ones. Do not edit those two lines by hand until then; `brew install` will not succeed until the first release has been published.

## License

The formulae in this tap are under the MIT License, like memtree.
