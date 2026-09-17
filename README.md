# Homebrew Tap

Casks for Jay Wedgeworth's Mac apps.

## Usage

```bash
brew tap jaywedgeworth22/tap
brew install --cask agent-bar
```

`brew install --cask jaywedgeworth22/tap/agent-bar` does both in one step, without tapping first.

## Casks

| Cask | What It Is |
|---|---|
| [`agent-bar`](Casks/agent-bar.rb) | [AgentBar](https://github.com/jaywedgeworth22/agent-bar) — a macOS menu bar monitor for AI coding agent quotas, with fleet push and pull |

Every cask here installs a build signed with a Developer ID and notarized by Apple.  Upgrade with `brew upgrade --cask`, and remove with `brew uninstall --cask`.
