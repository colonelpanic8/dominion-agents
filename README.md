# dominion-agents

Context and skills that help AI agents understand and play
[Dominion](https://www.riograndegames.com/games/dominion/), with one set of
files shared by Claude Code and OpenAI Codex.

## Contents

| Path | Purpose |
| --- | --- |
| `context/rules.md` | Rules reference for every expansion through Rising Sun (Arcana provisional) |
| `AGENTS.md` / `CLAUDE.md` | Repository instructions that load the context (one file, symlinked) |
| `skills/` | Optional task-specific skills |

## How agents load it

- **Context**: `AGENTS.md` requires reading `context/rules.md`. Claude Code
  inlines it automatically through an `@context/rules.md` import. Codex
  reads it when following the instruction.
- **Skills**: Codex finds them through `.agents/skills` and Claude Code
  through `.claude/skills`. Both point to `skills/`.
- **Outside this repo**: `packages.default` installs the context and skills
  under `share/dominion-agents/`.

## Development

```sh
direnv allow   # or: nix develop
just check
```
