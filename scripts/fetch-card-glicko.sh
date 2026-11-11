#!/usr/bin/env bash
# Snapshot the community Dominion Card Glicko ratings (markus et al.).
set -euo pipefail
cd "$(dirname "$0")/.."

sheet=1CaVOd1pgAgmjJHXPM1tVMVnlJOLDZaq8BxjW4I1NI1E
out=data/card-glicko
mkdir -p "$out"

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
  curl -fsSL "https://docs.google.com/spreadsheets/d/$sheet/export?format=csv&gid=${tabs[$name]}" -o "$out/$name.csv.tmp"
  mv "$out/$name.csv.tmp" "$out/$name.csv"
done

date -u +%Y-%m-%d > "$out/FETCHED"
