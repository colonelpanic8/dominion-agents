# dominion-agents

Agent context and skills for the deck-building card game Dominion. This repo
targets Claude (Claude Code) and OpenAI (Codex) agents, and both share the
same files.

## Required context

Before doing any Dominion work, read all of these in full:

- Rules reference: @context/rules.md
- Strategy basics: @context/strategy.md
- Card power levels and where they come from: @context/card-power.md

- Card text overrides general rules. When a question hinges on exact card
  wording, quote or ask for the card text rather than reciting it from memory.
- Use second-edition / Dominion Online wording, and mark first-edition-only
  cards as such.
- Arcana (announced 2026) isn't fully documented yet. Flag anything about it
  as unconfirmed.

## Layout

- `context/`: mandatory context. Every file here is linked from the section
  above. `context/rules.md` is the canonical rules reference, and other
  files should point to it, not restate the rules.
- `data/`: reference data you look up on demand, not read in full, e.g.
  `data/card-glicko/*.csv` (community card ratings; refresh with
  `just refresh-power`).
- `skills/<name>/SKILL.md`: optional, task-specific workflows (YAML
  frontmatter with `name` and `description`, then instructions). Supporting
  material goes in `skills/<name>/references/`.
- `.agents/skills` (Codex) and `.claude/skills` (Claude Code) are both
  symlinks to `skills/`. Never put files in them directly.
- `CLAUDE.md` is a symlink to this file.

## Invariants

- Keep content provider-neutral. Don't use tool names, slash commands or
  frontmatter fields that only one agent understands, unless they are optional
  extras the other agent safely ignores. The `@path` line under "Required
  context" is one: Claude Code inlines the file, and Codex reads it as a path.
- Material every Dominion task needs goes in `context/` and is linked here.
  Use a skill only for a workflow that some tasks need.
- Keep a skill's `name` equal to its directory name. Write descriptions that
  say when to use the skill, since that is what triggers it.
- Keep the rules reference concise: mechanics and edge cases, not card
  lists. Card-specific data belongs in a separate data file.

## Checks

`just check` validates the shared symlinks, the context links and skill
frontmatter, and checks Nix formatting. Run it inside the dev shell
(`direnv allow`, or `nix develop -c just check`).
