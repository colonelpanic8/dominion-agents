# dominion-agents

Context and skills that help AI agents understand and play
[Dominion](https://www.riograndegames.com/games/dominion/), with one set of
files shared by Claude Code and OpenAI Codex.

## Contents

| Path | Purpose |
| --- | --- |
| `context/rules.md` | Rules reference for every expansion through Rising Sun (Arcana provisional) |
| `context/strategy.md` | Strategy fundamentals: Big Money baseline, archetypes, openings, endgame |
| `context/card-power.md` | Card power levels, their sources and how to read them |
| `data/card-glicko/` | Snapshot of the community [Card Glicko](https://docs.google.com/spreadsheets/d/1CaVOd1pgAgmjJHXPM1tVMVnlJOLDZaq8BxjW4I1NI1E) ratings |
| `AGENTS.md` / `CLAUDE.md` | Repository instructions that load the context (one file, symlinked) |
| `skills/kingdom-analysis/` | Skill: analyze a kingdom before the game and recommend a plan and opening |

## How agents load it

- **Context**: `AGENTS.md` requires reading every file in `context/`.
  Claude Code inlines them automatically through `@context/...` imports.
  Codex reads them when following the instruction.
- **Skills**: Codex finds them through `.agents/skills` and Claude Code
  through `.claude/skills`. Both point to `skills/`.
- **Outside this repo**: `packages.default` installs the context and skills
  under `share/dominion-agents/`.

## Development

```sh
direnv allow   # or: nix develop
just check
```
