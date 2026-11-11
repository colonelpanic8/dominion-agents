---
name: kingdom-analysis
description: Analyze a Dominion kingdom before the game starts and recommend a plan. Use when given a set of kingdom cards, landscapes or a game setup (a typed list, screenshot or Dominion Online log) and asked what to do, how to open, which strategy wins, or how strong the board's cards are.
---

# Kingdom analysis

Turn a kingdom into a recommended plan, an opening for both 4/3 and 5/2, and
the risks to watch. Rely on the repo context (`context/rules.md`,
`context/strategy.md` and `context/card-power.md`). This skill adds the
procedure.

Defaults, unless the user says otherwise:

- Assume 2 players. Name what would change with more players.
- Explore before deciding: lay out two to four real candidate strategies,
  then recommend one.
- Keep the reasoning short and checkable. Don't give a tutorial.

## 1. Inventory

- List every Kingdom pile with its cost, plus every landscape (Events,
  Projects, Ways, Landmarks, Traits, Allies, Prophecies) and any non-Supply
  piles they bring (Spoils, Horses, Loot, Rewards, Spirits, ...).
- Note setup effects: Colony/Platinum, Shelters, Young Witch's Bane, a
  Prophecy and its Sun count, which pile a Trait is on, split piles, and
  added piles (Approaching Army, Ferryman, Riverboat, ...).
- Note special rules in play: Debt, Potion, Night, Favors, Exile, Coffers,
  Villagers, Durations.
- Get exact card text from the user, the log or the client. Never
  reconstruct it from memory. If text is missing, ask or state your
  assumption.

## 2. Tag roles

For each card and landscape, tag **payload**, **deck control**, **both** or
**neither**, and give its specific role:

- Deck control: village / +Actions, draw (terminal or non-terminal),
  cantrip, trashing, sifting, handsize refill after an attack.
- Payload: +$ / economy, +Buy, gaining (to what cost), VP tokens or
  alternative VP, cost reduction, attacks (junking, handsize, deck, trash),
  pile control.
- Remember landscape roles: Events that give +Buy or gains, Ways that turn
  any Action into a village or draw, Allies that give Favors-powered
  effects, Prophecies that change the economy once active.

Look up power priors with
`grep -i '<name>' data/card-glicko/*.csv`, but judge each card by its role
on *this* board.

## 3. Answer the gate questions

1. **Trashing**: is there strong trashing, and how fast is it?
2. **Junking**: is there a junking attack? Can it be blocked, trashed away
   or outpaced?
3. **Draw your deck**: can a deck reliably draw itself, either with
   villages plus draw or with non-terminal draw? What breaks it (terminal
   draw only, villages without draw)?
4. **Payload ceiling**: given the deck control available, what's the best
   achievable payload per turn? Is there +Buy or gaining to cash in a big
   turn? One Province per turn is a ceiling, not a plan.
5. **Combos and outliers**: is there a known strong combo, a top-tier or
   "broken" card, or a way to end the game fast (three-pile, rush, alt VP)?

## 4. Explore candidate strategies, then choose

Build two to four candidates that are realistic on this board. Always
include the strongest Big Money + X as the baseline, plus any engine, slog,
rush or combo the gate answers support. Don't pad the list with obviously
bad plans. For each candidate, give:

- **How it works**: its key cards, split into payload and deck control, and
  how a typical good turn looks once the deck is built.
- **What it needs, by when**: e.g. "Chapel down to ~8 cards by turn 7,
  3 villages and 2 draw by turn 10, then +Buy."
- **Speed and ceiling**: roughly when it starts scoring, how much it scores
  per turn at its peak, and how it finishes the game.
- **Weaknesses**: what goes wrong (bad shuffles, collisions, attacks it is
  exposed to), and how it fares against each of the other candidates.

Then choose: pick the plan with the best expected result against a
competent opponent who picks *their* best plan. Say what would flip the
choice, e.g. a 5/2 opening, more players, or the opponent going for a
particular plan.

## 5. Openings and buy priorities

- Give the best 4/3 and 5/2 openings, with one line of reasoning each.
- Give the buy priority for the first two or three shuffles, and roughly
  when to start greening.

## 6. Threats and interaction

- Name the opponent's likely best plan and how it interacts with yours,
  including attack tempo, contested piles and the race for split or limited
  piles.
- Note three-pile risk: which piles could empty, and who benefits.
- Note the end condition: Provinces or Colonies, Duchy dancing, alt-VP
  piles.

## Output format

```markdown
**Board summary:** <2–3 sentences: the gate answers and the payload ceiling>

| Card | Cost | Role | Notes |
| --- | --- | --- | --- |
| ... | ... | deck control: village | ... |

### Candidate strategies
1. **<name>**: how it works · needs · speed/ceiling · weaknesses
2. ...

**Recommendation:** <plan, and why it beats the other candidates>
**Open:** 4/3: <cards> · 5/2: <cards>
**Watch out for:** <1–3 risks, and what would change the plan>
```
