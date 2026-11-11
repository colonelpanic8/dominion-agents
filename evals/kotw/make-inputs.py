#!/usr/bin/env python3
"""Write one blind input file per kingdom: the card list plus exact card text.

Usage: make-inputs.py <cards-dir> <out-dir>

<cards-dir> is dominion-engine's data/cards (one JSON list of cards per set).
Writes <out-dir>/<id>/kingdom.md for each entry in kingdoms.json.
"""

import glob
import json
import os
import sys


def load_cards(cards_dir):
    cards = {}
    for path in sorted(glob.glob(os.path.join(cards_dir, "*.json"))):
        for card in json.load(open(path)):
            cards.setdefault(card["name"].lower(), card)
    return cards


def cost(card):
    c = card.get("cost") or {}
    parts = []
    if "coins" in c:
        parts.append(f"${c['coins']}")
    if c.get("potions"):
        parts.append("Potion")
    if c.get("debt"):
        parts.append(f"{c['debt']}D")
    text = "+".join(parts) or "-"
    if c.get("variable"):
        text += "*"
    if c.get("overpay"):
        text += "+ (overpay)"
    return text


def render(cards, name, missing):
    card = cards.get(name.lower())
    if card is None or not card.get("text", "").strip():
        missing.append(name)
    if card is None:
        return f"## {name}: NOT FOUND\n"
    head = f"## {card['name']} ({cost(card)}) [{' - '.join(card['types'])}]"
    if card.get("pile"):
        head += f" pile={card['pile']}"
    return f"{head}\n{card.get('text', '').strip()}\n"


def main():
    if len(sys.argv) != 3:
        sys.exit(__doc__)
    cards = load_cards(sys.argv[1])
    here = os.path.dirname(os.path.abspath(__file__))
    for k in json.load(open(os.path.join(here, "kingdoms.json"))):
        missing = []
        out = [
            "# Kingdom\n",
            f"Kingdom cards: {', '.join(k['cards'])}\n",
            f"{k['setup']}\n",
            "Players: 2 (Dominion Online rules).\n",
            "# Exact card text\n",
            *(render(cards, n, missing) for n in k["cards"] + k["landscapes"]),
        ]
        if k["related"]:
            out.append("# Related non-Kingdom cards\n")
            out.extend(render(cards, n, missing) for n in k["related"])
        target = os.path.join(sys.argv[2], k["id"])
        os.makedirs(target, exist_ok=True)
        with open(os.path.join(target, "kingdom.md"), "w") as f:
            f.write("\n".join(out))
        if missing:
            print(f"{k['id']}: no text for {', '.join(missing)}", file=sys.stderr)


if __name__ == "__main__":
    main()
