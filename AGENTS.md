# dominion-agents

Agent context and skills for the deck-building card game Dominion. This repo
targets Claude (Claude Code) and OpenAI (Codex) agents, and both share the
same files.

## Layout

- `skills/<name>/SKILL.md`: one directory per skill (YAML frontmatter with
  `name` and `description`, then instructions). Supporting material goes in
  `skills/<name>/references/`.
- `skills/dominion-rules/references/rules.md`: the canonical rules
  reference. Other skills should point to it, not restate the rules.
- `.agents/skills` (Codex) and `.claude/skills` (Claude Code) are both
  symlinks to `skills/`. Never put files in them directly.
- `CLAUDE.md` is a symlink to this file.

## Working on Dominion tasks

- For any rules question or card interaction, load the `dominion-rules`
  skill (or read `skills/dominion-rules/references/rules.md`).
- Card text beats general rules. Use second-edition / Dominion Online
  wording, and mark first-edition-only cards as such.
- Arcana (announced 2026) isn't fully documented yet. Treat it as
  provisional.

## Invariants

- Keep content provider-neutral. Don't use tool names, slash commands or
  frontmatter fields that only one agent understands, unless they are optional
  extras the other agent safely ignores.
- Keep a skill's `name` equal to its directory name. Write descriptions that
  say when to use the skill, since that is what triggers it.
- Keep the rules reference concise: mechanics and edge cases, not card
  lists. Card-specific data belongs in a separate data file or skill.

## Checks

`just check` validates skill frontmatter and the shared symlinks, and checks
Nix formatting. Run it inside the dev shell (`direnv allow`, or
`nix develop -c just check`).
