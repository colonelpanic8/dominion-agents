---
name: kingdom-analysis
description: Analyze a Dominion kingdom before the game starts and recommend a plan. Use when given a set of kingdom cards, landscapes or a game setup (a typed list, screenshot or Dominion Online log) and asked what to do, how to open, which strategy wins, or how strong the board's cards are.
---

# Kingdom analysis

Turn a kingdom into a recommended plan, an opening for each split the
starting deck can produce, and the risks to watch. Rely on the repo context
(`context/rules.md`, `context/strategy.md`, `context/card-power.md` and
`context/combos.md`). This skill adds the procedure. Once the game starts,
use the `play-turn` skill for each decision.

Defaults, unless the user says otherwise:

- Assume 2 players. Name what would change with more players.
- Work from card text. Community ratings come in at step 4, as a check on a
  view you have already formed.
- Keep the reasoning concise. Don't give a tutorial, assume an audience that is
  proficient in the game.

## 1. Inventory

- List every Kingdom pile with its cost, plus every landscape (Events,
  Projects, Ways, Landmarks, Traits, Allies, Prophecies) and any non-Supply
  piles they bring (Spoils, Horses, Loot, Rewards, Spirits, ...).
- Note setup effects: Colony/Platinum, Shelters, Heirlooms, Young Witch's
  Bane, a Prophecy and its Sun count, which pile a Trait is on, split piles,
  and added piles (Approaching Army, Ferryman, Riverboat, ...).
- Note special rules in play: Debt, Potion, Night, Favors, Exile, Coffers,
  Villagers, Durations.
- Note the price points: which costs are crowded (every key card at $5) and
  which are empty (nothing worth buying at $2, nothing above $5).
- Write down the actual starting deck and the turn 1–2 splits it produces.
  The default is 4/3 or 5/2, but Heirlooms and Shelters change the deck, and
  some change the money.
- Get exact card text from the user, the log or the client. Never
  reconstruct it from memory. If text is missing, ask or state your
  assumption.

## 2. First read: what is this board about?

Answer these quickly from the card text, before studying any card in depth.
The answers decide where to look harder. "Payload" and "deck control" are
used as defined in "Payload and deck control" in `context/strategy.md`.

1. **Scoring and ending**: every way to score here (Provinces or Colonies,
   other Victory cards, VP tokens, Landmarks, Curses as minus points), and
   which of them add no card to the deck. Which piles will run out, and how
   does the game most likely end?
2. **Draw and Actions**: what increases hand size, and is it terminal or
   non-terminal (see "Draw and villages" in `context/strategy.md`)?
   What gives a spare Action: villages, including conditional ones,
   Actions that arrive at the start of the next turn, and Villagers?
3. **Thinning**: what takes cards out of your deck (trashing, Exile, mats,
   swapping a card for a better one), and how fast is it?
4. **+Buy and gaining**: where does +Buy come from (Kingdom cards, Events,
   tokens), and what gains cards or VP without a Buy? With none of these, a
   turn scores at most one card, so an engine can't outscore money (see
   "+Buy turns a big turn into points").
5. **Attacks**: is there a junker? Can it be blocked, trashed away or
   outpaced? What do the other attacks hit?
6. **Standouts**: a card the whole board bends around, an unusual setup, a
   landscape that changes scoring, a combo from `context/combos.md`, or a
   way to end the game fast.

Then write one or two sentences: what the board is about, and what is still
open ("the only village is conditional", "no +Buy", "the payoff needs a
discard outlet"). Those open points are what step 3 goes looking for.

## 3. Is there an engine, and is it fast and reliable enough?

This is usually the question that decides the board. Money plus +Buy is
payload enough, so payload is rarely what's missing. What decides the
board is whether a deck here can draw itself, how soon, and how often.

- **Pieces**: the draw, the Actions its terminals need (none if draw and
  payload are non-terminal), thinning and +Buy the engine would use,
  the cheapest set of them, and their prices. If a piece is missing, name
  it.
- **Speed**: roughly when it first draws its deck, from the opening and
  the number of parts it must gain. Compare that with "How fast decks
  are" in `context/strategy.md`.
- **Reliability**: once built, how often does it draw its deck? Check what
  can stall it (see "Reliability" in `context/strategy.md`): copies of the
  key cards, Actions against terminals, spare draw, junk, and the
  opponent's attacks.
- **Ceiling**: the $ and Buys of a built turn, and how many Provinces (or
  other VP) that is per turn.
- **Payload**: now judge the payload cards for the deck this board wants.
  Note which pay off only when stacked (see "Payload depends on the
  deck"), and so matter only if the engine works.

When something stalls the engine (a missing or conditional village, no
+Buy, a key card not in hand every turn, a price that's hard to hit), look
for the card or landscape that fixes it. Do the same for any other scoring
route or combo from step 2. Read cards for what they **supply** and what
they **want**, not only for their role:

- Supplies: gains (and where they land: discard, hand, top of deck),
  discards from hand or deck, trashes, putting cards on top of the deck or
  ordering it, playing another card, extra Actions or Buys, tokens, anything
  carried to the next turn, forced discards or gains for the opponent.
- Wants: when-gained, when-discarded and when-trashed triggers; counts of
  cards, types or names; a particular cost or type in hand, in play or on
  top of the deck; an Action-dense hand; an Action already in play; a pile
  running out; the opponent doing something.

Consistency is a supply too. Cards that put cards on the deck, order it, set
cards aside or act at the start of the next turn can make one key card show
up every turn, and that is often what makes an awkward engine work.

Write each real interaction as a loop with numbers: "A does X, which
triggers B, for Y per turn, from about turn T".

## 4. Sweep what's left

Step 3 finds what you were looking for. This pass finds what you weren't.

- For every card and landscape that step 3 didn't use, answer in one line:
  which other card here makes this better than its text alone? "None" is an
  allowed answer only after checking it against each of the others. Read the
  whole card first: the type line, the text below the dividing line, and
  where it goes when gained.
- Check the patterns in `context/strategy.md` ("Interactions to look for")
  and the combos in `context/combos.md`. That list shows kinds of
  interaction and is not complete. Don't drop an interaction because it
  isn't listed.
- Look the cards up in `context/card-ratings.md`. Where your view and the
  rating differ by a lot, in either direction, take a second look and give
  the board-specific reason. A rating is never a reason to skip a card or
  to buy one. First-edition ratings carry little weight.

If the sweep turns up a new loop, take it back through step 3.

## 5. Decide

- **Candidates**: two or three plans that are realistic here. Always
  include the strongest Big Money + X as the baseline, the engine from
  step 3 if there is one, and one plan for each strong loop. Build the
  best version of each before judging it: the right opening, the cheapest
  set of pieces, every helper the board offers.
  For each, say how it works, what it needs by when (including the minimum
  number of copies of any scarce card, and whether the opponent wants them
  too), and its main weakness. Write every candidate down, even in a short
  write-up. A recommendation with no rivals beside it skipped this step.
- **No village**: when step 2 found no way to play two terminals in a turn,
  first check for non-terminal draw: with it, an engine of non-terminal
  draw and payload needs no village. Without it, the realistic plans are
  mostly money decks and the choice of X matters
  most. If the board has an attack, compare at least X as a draw card, X as
  the attack, and two copies of the attack. Estimate for each: the
  opening, the turns it first hits $6 and $8, and how often it plays its
  attack. k copies in an N-card deck reach a 5-card hand in at most
  5k/N of turns, less once copies collide (one copy in 15 cards: 1 turn in
  3; two copies: over half). Judge each against an opponent who also plays
  money (see "The Big Money baseline" in `context/strategy.md`).
- **Matchups**: name the opponent's best plan against your pick and
  against the runner-up. Check the race (does one plan end the game, or
  take an unbeatable lead, before the other comes online?), attacks that
  hit one plan much harder, contested piles and three-pile risk, and who
  controls when the game ends.
- **Pick** the plan with the best result against the opponent's best
  response. Against a strong opponent prefer a plan that holds up whatever
  they do. Between two plans that are close, prefer the more reliable one.
- **Openings**: the best opening for each split from step 1, with one line
  of reasoning each. If a split leaves nothing worth buying at one price,
  say so.
- **Buy priorities** for the first two or three shuffles, and roughly when
  to start greening.
- **Ending**: which piles could empty, who benefits, and how the game ends.
- **What would flip the choice**: a different split, the opponent's
  opening, more players, a key pile running low.
- **Challenge the pick**: take one more look at the rejected plan with the
  highest ceiling, with every fix the board offers. Most wrong calls come
  from rejecting the stronger, harder plan after a shallow look. Then ask
  how your pick loses.
- **Least sure of**: the one conclusion most likely to be wrong, and what
  would show it.

## Output format

```markdown
**Board:** <what it is about, from step 2, in 2–3 sentences>
**Engine:** <the pieces, when it draws its deck, how reliably, and a built
turn's $ and Buys; or the missing piece>
**Key interactions:**
- <A + B: the loop, with numbers>
**Other cards:** <one line each: its best partner here, or "none">
**Plans considered:** <each in one line: how it works · rough line ($6 and
$8 turns, attack plays) · needs · weakness>
**Recommendation:** <plan, and why it holds up against the best response>
**Against their best plan:** <the matchup for the pick and the runner-up>
**Open:** <split>: <cards> · <split>: <cards>
**Buy priorities:** <first two or three shuffles, then when to green>
**Ending:** <how it ends, which piles are at risk>
**Watch out for:** <1–3 risks, and what would change the plan>
**Challenged:** <the rejected plan you re-tested, and how the pick loses>
**Least sure of:** <the conclusion most likely to be wrong, and the test>
**Assumed:** <rules readings or card text you weren't sure of, and anything
you needed that the repo context didn't cover>
```
