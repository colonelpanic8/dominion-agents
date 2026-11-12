---
name: play-turn
description: Choose plays in a Dominion game in progress, including play order, which cards to play or hold, what to buy or gain, and responses to attacks (e.g. what to discard to Militia). Use for every decision while playing or advising on a game, each turn and each prompt, not only when asked; also when given a hand and game state and asked what to do, or when reviewing a played turn.
---

# Play a turn

Turn the current game state into a play sequence and a buy, with a one-line
reason for each decision that isn't obvious. Rely on the repo context,
especially `context/strategy.md` for the plan and the endgame.

Most turns are routine and should be quick. Spend the thinking where turns
are decided: the review at each reshuffle (step 2), every gain (step 6),
and the endgame (step 7).

## 1. Read the situation

- Get the hand, cards in play, Durations and mats, and whatever is known
  about your deck and discard pile: their size, what's left in the deck
  since the last shuffle, and good cards waiting in the discard.
- Get the scores, the pile counts (Provinces/Colonies and any pile close to
  empty), and your available Actions, Buys, $, Coffers, Villagers and
  Favors.
- Use the card text supplied with the state. Don't reconstruct it from
  memory. If something needed is missing, say what you assumed.
- Decide what this turn is for: building, greening, or ending the game.
  Name the price or gains it needs (e.g. "$8 + a Buy", "gain 2 villages").
- When a card that wasn't part of the plan shows up (a Black Market reveal,
  a Loot, a Reward, a card an attack hands you, something the opponent just
  started buying), check it against the board before judging it: what here
  supplies what it wants, and what wants what it supplies? See
  "Interactions to look for" in `context/strategy.md`. A card that is weak
  on most boards can be the best buy on this one.

## 2. Review the plan at each reshuffle

On the first turn after you reshuffle, and on any turn the opponent's deck
or the piles change sharply, step back before playing:

- **Re-read the plan.** Compare the deck you own with the deck the plan is
  building toward, and the turn with the plan's milestones (first big
  turn, first Province, when to green). Without milestones in the plan, use
  "How fast decks are" in `context/strategy.md`.
- **Check the race.** Count the opponent's deck from the state: what they
  are building, their Provinces (or other VP) so far, and their pace. Work
  out roughly how many turns they need to end the game or take a lead you
  can't recover. Then work out how many your deck needs. Write both
  numbers.
- **Decide** to keep building, start greening, or change plans, and say
  why. Change plans when your deck can't reach its payoff before the
  opponent's clock runs out, not because the score is behind: an engine
  still building is supposed to be behind. When you change plans, pick the
  one your current deck is closest to, not the one you'd draft from
  scratch.
- If you keep notes between turns, write the target deck, the next
  milestone and the opponent's clock there, and read them back at the next
  review.

## 3. Order the plays

- Play draw first, so later choices are made with the most information.
  Play villages before terminals as needed to keep Actions.
- Play cards that trash from your hand last, so you've seen the most
  targets.
- Hold Throne Room or King's Court until you know what you lack. The best
  target is often another multiplier, or a card that produces what this
  turn still needs.
- Play a gainer just before a reshuffle if you want the gained card soon,
  and late if you don't.
- With more than one Buy, or before buying an Event or Project, play all
  the Treasures you mean to use before the first purchase. Buying anything
  ends Treasure play for the turn (`context/rules.md`, "Buy phase"), so
  paying for one purchase with just the Treasures it needs strands the
  rest. Hold back only a Treasure that hurts you to play.

## 4. Control the reshuffle

- Cards in your hand or in play when you reshuffle miss that whole pass
  through your deck. Trigger a reshuffle when your discard pile is strong
  and your hand is weak, not right after a big turn put your best cards in
  play.
- Don't fill your discard with junk (Cellar, Warehouse) just before you
  draw into a reshuffle.
- Cards that reveal or look at several cards (Sentry) reshuffle as soon as
  fewer cards are left than they look at.

## 5. Don't play everything

- Skip plays that hurt you, such as forced trashing of a card you need, or
  that help the opponent, such as a "steal or swap" attack while they hold a
  Province, or effects that give them cards.
- With one Buy, once you've reached your price, consider stopping so good
  cards stay in your deck for next turn.
- Don't play dead cards that only reveal information to the opponent.
- Count what a play or purchase costs later: Debt, a token that shrinks
  your next hand, a card the opponent draws or gains. A bonus taken every
  turn that costs next turn a card is often a loss.

## 6. Choose the buy or gains from the deck you own

A card's value depends on the deck it joins. Before choosing any gain,
take stock of your whole deck as it stands (everything you own, not just
this hand) and write it in one line:

- **Size**, and how many cards are **junk** (Victory cards, Curses, Ruins,
  Coppers once you have better).
- **Actions**: villages (how many extra Actions a turn really gets) against
  terminals. Without villages, keep to roughly one terminal per 8–10 cards
  (`context/strategy.md`, "Terminal collision").
- **Draw**: how many cards a turn typically draws, against the deck size.
  Does the deck draw itself yet?
- **Economy**: total $ from Treasures and Actions, divided by deck size,
  times the cards a turn sees. That is your typical turn's $. Name the
  price your plan needs and whether you reach it.
- **+Buy and gains**: how many a good turn gets, against how many the plan
  needs.

Then name what the deck is shortest of for its plan (Actions, draw,
money, +Buy, thinning, or nothing because it's time to green) and buy what
fixes that. For example: "18 cards, 2 villages for 4 terminals, draws 8,
$1.1 per card: short on villages, so Village over Gold even at $6." The
card that is best in the abstract is often the wrong one: a third draw card
with no villages, a Gold in a deck that already hits $8 but can't draw, a
village with nothing to play.

Also:

- Follow the plan from the kingdom analysis, adjusted to the stock-take and
  the last review. When a buy departs from the plan (a card it didn't name,
  or a default such as Silver in place of a card it did), give a one-line
  reason. If no reason holds up, buy what the plan says.
- Think about when the card arrives. With a few cards left in your deck,
  your next hand is those plus the top of a new shuffle that includes this
  gain. Early in the game, buy what improves the very next shuffle.
- Decide whether to spend or keep Coffers and Villagers for a later price
  point or a bigger turn.

## 7. The endgame

Once 4 or fewer Provinces (or Colonies) are left, or any three piles
together are within a few turns' gains of empty, write out before every buy:

- the score now, and after each buy you're considering;
- what the opponent needs on their next turn to win or tie after each of
  them, and whether their deck can produce it: their Treasures and +Buys
  left in the current shuffle, stored Coffers, Villagers or Favors, cards on
  mats, unused extra turns;
- how many gains end the game on piles, for each of you.

Apply the Penultimate Province Rule and its exceptions
(`context/strategy.md`, "Greening and the endgame") to these numbers. Don't
decide the endgame without them.

## 8. Responding to attacks

- **Discard attacks** (Militia): keep the best three-card *hand*, not the
  three best cards. A deck that draws can keep Village + Smithy and discard
  Golds.
- **Junking**: when given a choice (e.g. Torturer), don't always take the
  option that keeps your deck clean if it costs you your own key plays.
- Reveal Reactions only when the benefit beats keeping the card's normal
  use.

## Output format

```markdown
**Review:** <reshuffle turns only: plan vs deck, both clocks, build/green/switch>
**Goal this turn:** <e.g. "$8 + Buy for Province + Duchy">
**Play:** 1. <card> — <why, if not obvious> 2. ...
**Deck:** <the one-line stock-take, then what it is shortest of>
**Buy/gain:** <cards> — <why, in terms of that shortage; for a departure
from the plan, the reason>
**Endgame:** <when step 7 applies: scores after each option and what the
opponent needs>
```

If the best line depends on unknown information, give the line for the
likely case and say what would change it.
