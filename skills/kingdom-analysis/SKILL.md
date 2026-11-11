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

## 3. Look for interactions

Check pairs of cards on the board, landscapes included, against the
interaction patterns in `context/strategy.md`: benefits from trashing,
gainers with on-gain effects, cost reduction, multiplier targets, draw-to-X
with cards that shrink your hand, discard for benefit, alternative VP
enablers, landscapes changing cards, and counters to the opponent's plan.

Each real interaction should either become a candidate strategy or change
one. Don't take it on faith: it still has to beat the plain options in the
comparison below.

## 4. Answer the gate questions

1. **Trashing**: is there strong trashing, and how fast is it?
2. **Junking**: is there a junking attack? Can it be blocked, trashed away
   or outpaced?
3. **Draw**: which combination of cards actually increases hand size
   without costing Actions (see "Engines" in `context/strategy.md`)? Can a
   deck reliably draw itself? What breaks it (terminal draw only, villages
   without draw, support the board doesn't provide)?
4. **Payload ceiling**: given the deck control available, what's the best
   achievable payload per turn? Is there +Buy or gaining to cash in a big
   turn? One Province per turn is a ceiling, not a plan.
5. **Outliers**: is there a top-tier or "broken" card, a strong interaction
   from step 3, or a way to end the game fast (three-pile, rush, alt VP)?

## 5. Explore candidate strategies

Build two to four candidates that are realistic on this board. Always
include the strongest Big Money + X as the baseline, plus any engine, slog,
rush or combo the gate answers support. Don't pad the list with obviously
bad plans. For each candidate, give:

- **How it works**: its key cards, split into payload and deck control, and
  how a typical good turn looks once the deck is built.
- **What it needs, by when**: e.g. "Chapel down to ~8 cards by turn 7,
  3 villages and 2 draw by turn 10, then +Buy."
- **Weaknesses**: bad shuffles, terminal collisions, dependence on one
  contested pile, and attacks it is exposed to.

## 6. Speed and scoring potential

Estimate these for each candidate. Rough turn numbers are fine: they exist
to make plans comparable, not to be precise.

- **Speed**: the turn it starts scoring in earnest, and the earliest turn it
  can realistically end the game, or force the opponent to.
- **Scoring rate**: VP per turn at its peak, e.g. "Province + Duchy per
  turn from turn 12", or "about 6 VP of tokens per turn".
- **Scoring ceiling**: how much VP is actually available to it. Count
  Provinces and Duchies, alternative VP (Gardens, Duke, Landmarks, VP
  tokens), and VP it denies the opponent (Curses, contested piles). A plan
  with a high rate but a low ceiling must end the game on its own terms.
- **Shape of the curve**: money plans score early and flatten. Engines
  score late and steeply. Slogs score slowly but for a long time. Rushes
  score little and race to end the game. The intersection of two plans'
  curves is when the slower plan must be ahead in VP.

## 7. Matchups: how the opponent's choice changes things

A plan is only viable relative to what the opponent does. For each pair of
candidates, judge who is favored and why:

- **Race**: does the faster plan end the game, or take an unbeatable lead,
  before the slower one comes online? Compare speed with the scoring
  crossover from step 6. Use the Big Money clock as the baseline: BM+X takes
  4 Provinces by about turn 14–17, and plain Big Money keeps taking a
  Province every other turn without stalling.
- **Interference**: attacks that hit one plan much harder than the other.
  Junking cripples thin engines. Handsize attacks hurt money more than
  decks that draw after the attack.
- **Shared resources**: contested piles (split piles, the only village,
  limited Rewards or Loot), mirrored attacks (whoever plays Witch more
  wins the Curse split), and three-pile risk created by either side.
- **Game-length control**: who decides when the game ends. A rusher or
  money deck can shorten the game. An engine with pile control can end it
  on its own terms, or deny the opponent the end.

Summarize this as a matchup table (rows: your plan; columns: opponent's
plan; cells: favored / even / unfavored plus a reason). Then note which
plans are **robust** (fine against everything) and which are **fragile**
(good only if the opponent cooperates).

## 8. Recommend

- Pick the plan with the best result against the opponent's best response.
  Against a strong opponent prefer robust plans, and say whether that is
  a different plan than you would pick against an unknown or weak player.
- Say what would flip the choice: a 5/2 opening, seeing the opponent commit
  to a plan, more players, or a key pile running low.

## 9. Openings and buy priorities

- Give the best 4/3 and 5/2 openings for the recommended plan, with one
  line of reasoning each.
- Give the buy priority for the first two or three shuffles, and roughly
  when to start greening.
- Note how to adapt once the opponent's opening shows their plan.

## 10. Endgame and piles

- Three-pile risk: which piles could empty, and who benefits.
- The end condition: Provinces or Colonies, Duchy dancing, alt-VP piles.

## Output format

```markdown
**Board summary:** <2–3 sentences: the gate answers and the payload ceiling>

| Card | Cost | Role | Notes |
| --- | --- | --- | --- |
| ... | ... | deck control: village | ... |

### Candidate strategies
1. **<name>**: how it works · needs · weaknesses
2. ...

| Plan | Starts scoring | Can end by | Peak VP/turn | VP ceiling |
| --- | --- | --- | --- | --- |
| ... | ~T10 | ~T16 | Province+Duchy | all Provinces + Duchies |

| You \ Opponent | Plan A | Plan B | ... |
| --- | --- | --- | --- |
| Plan A | even | favored: <why> | ... |

**Robust vs. fragile:** <which plans hold up regardless of the opponent>
**Recommendation:** <plan, and why it holds up against the best response>
**Open:** 4/3: <cards> · 5/2: <cards>
**Watch out for:** <1–3 risks, and what would change the plan>
```
