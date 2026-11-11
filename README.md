# dominion-agents

Context and skills that help AI agents understand and play
[Dominion](https://www.riograndegames.com/games/dominion/), with one set of
files shared by Claude Code and OpenAI Codex.

## Contents

| Path | Purpose |
| --- | --- |
| `skills/dominion-rules/` | Rules reference for every expansion through Rising Sun (Arcana provisional) |
| `AGENTS.md` / `CLAUDE.md` | Repository instructions (one file, symlinked) |

## Using the skills

- **In this repo**: Codex finds skills through `.agents/skills`, and Claude
  Code through `.claude/skills`. Both point to `skills/`.
- **Globally**: symlink a skill directory into `~/.agents/skills/` (Codex)
  and `~/.claude/skills/` (Claude Code), or install `packages.default` from
  the flake, which ships the skills under `share/dominion-agents/skills`.

## Development

```sh
direnv allow   # or: nix develop
just check
```
