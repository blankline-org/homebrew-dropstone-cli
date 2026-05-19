# Dropstone CLI Homebrew tap

Official Homebrew tap for [Dropstone CLI](https://dropstone.io).

## Install

```bash
brew tap blankline-org/dropstone-cli
brew install dropstone
```

## Upgrade

```bash
brew upgrade dropstone
```

## Verify

```bash
dropstone --version
```

## What is this?

Dropstone CLI is a closed-source coding agent that runs in your terminal. Binaries are hosted on Cloudflare R2; this repository only contains the Homebrew formula that points at them.

## Releasing a new version

This file is updated by the `release.ts` script in [`dropstone-cli`](https://github.com/blankline-org/dropstone-cli):

1. Build + upload binaries: `DROPSTONE_VERSION=x.y.z bun run script/release.ts` (in the CLI repo)
2. The script prints a ready-to-paste Formula — copy it into `Formula/dropstone.rb` here
3. Commit + push to `main`

That's it — `brew upgrade dropstone` will pick up the new version on the next user run.
