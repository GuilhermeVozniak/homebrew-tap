# GuilhermeVozniak/homebrew-tap

Homebrew casks and formulae for apps published by [@GuilhermeVozniak](https://github.com/GuilhermeVozniak).

## App Cleaner

Desktop app:

```sh
brew install --cask GuilhermeVozniak/tap/app-cleaner
```

App Cleaner updates itself from inside the app, so the cask declares
`auto_updates` and `brew upgrade --cask app-cleaner` only runs with `--greedy`.
`brew uninstall --cask app-cleaner` removes the app; add `--zap` to also delete
its settings and the backup store under `~/Library/Application Support/AppCleaner`.

Terminal CLI (installs the `app-cleaner` binary):

```sh
brew install GuilhermeVozniak/tap/app-cleaner-cli
```

`Casks/app-cleaner.rb` and `Formula/app-cleaner-cli.rb` are bumped automatically
by the [release workflow](https://github.com/GuilhermeVozniak/app-cleaner/blob/main/.github/workflows/release.yml)
in the app repository whenever a new version is published.

## Tiles Spliter

```sh
brew install --cask GuilhermeVozniak/tap/tiles-spliter
```

Updates ship with `brew upgrade --cask tiles-spliter`. `brew uninstall --cask
tiles-spliter` removes the app; add `--zap` to also delete its settings.

`Casks/tiles-spliter.rb` is bumped automatically by the
[release workflow](https://github.com/GuilhermeVozniak/tiles-spliter/blob/main/.github/workflows/release.yml)
in the app repository whenever a new version is published, so version and
checksum changes normally do not need manual commits here.
