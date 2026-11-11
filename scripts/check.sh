#!/usr/bin/env bash
set -euo pipefail
shopt -s nullglob
cd "$(dirname "$0")/.."

fail=0
err() { echo "error: $*" >&2; fail=1; }

for link in .agents/skills .claude/skills; do
  [[ "$(readlink "$link")" == "../skills" ]] || err "$link must be a symlink to ../skills"
done
[[ "$(readlink CLAUDE.md)" == "AGENTS.md" ]] || err "CLAUDE.md must be a symlink to AGENTS.md"

for ctx in context/*; do
  grep -qF "@$ctx" AGENTS.md || err "$ctx is not linked from AGENTS.md as @$ctx"
done
while IFS= read -r ref; do
  [[ -e "$ref" ]] || err "AGENTS.md links missing file $ref"
done < <(grep -o '@context/[^[:space:]`]*' AGENTS.md | cut -c2- || true)

for skill in skills/*/; do
  dir=$(basename "$skill")
  file="$skill/SKILL.md"
  [[ -f "$file" ]] || { err "$file missing"; continue; }
  [[ "$(head -n1 "$file")" == "---" ]] || err "$file: missing frontmatter"
  front=$(awk 'NR==1{next} /^---$/{exit} {print}' "$file")
  name=$(sed -n 's/^name: *//p' <<<"$front")
  [[ "$name" == "$dir" ]] || err "$file: name '$name' != directory '$dir'"
  grep -q '^description: .\+' <<<"$front" || err "$file: missing description"
  while IFS= read -r ref; do
    [[ -e "$skill/$ref" ]] || err "$file: referenced $ref does not exist"
  done < <(grep -o '`references/[^`]*`' "$file" | tr -d '`' || true)
done

schema=protocol/agent-view.schema.json
check-jsonschema --check-metaschema "$schema" >/dev/null || err "$schema is not a valid JSON Schema"
check-jsonschema --schemafile "$schema" protocol/examples/view.json >/dev/null \
  || err "protocol/examples/view.json does not match $schema"

exit $fail
