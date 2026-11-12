#!/usr/bin/env bash
# Regenerate context/card-ratings.md from the community Dominion Card Glicko
# ratings (markus et al.).
set -euo pipefail
cd "$(dirname "$0")/.."

sheet=1CaVOd1pgAgmjJHXPM1tVMVnlJOLDZaq8BxjW4I1NI1E
tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' EXIT

declare -A tabs=(
  [cards]=0
  [events-projects]=1523942532
  [allies]=172488689
  [ways]=1738176590
  [landmarks]=1808091873
  [traits]=717212553
  [prophecies]=1742741264
)

for name in "${!tabs[@]}"; do
  curl -fsSL "https://docs.google.com/spreadsheets/d/$sheet/export?format=csv&gid=${tabs[$name]}" -o "$tmp/$name.csv"
done

python3 scripts/render-card-ratings.py "$tmp" "$(date -u +%Y-%m-%d)" > context/card-ratings.md.tmp
mv context/card-ratings.md.tmp context/card-ratings.md
