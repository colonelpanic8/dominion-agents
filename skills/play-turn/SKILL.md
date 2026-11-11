---
name: play-turn
description: Recommend how to play a Dominion turn in progress, including play order, which cards to play or hold, what to buy or gain, and responses to attacks (e.g. what to discard to Militia). Use when given a current hand and game state and asked what to do, or when reviewing a played turn.
---

# Play a turn

Turn the current game state into a play sequence and a buy, with a one-line
reason for each decision that isn't obvious. Rely on the repo context,
especially `context/strategy.md` for the plan and the endgame.

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

## 2. Order the plays

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

## 3. Control the reshuffle

- Cards in your hand or in play when you reshuffle miss that whole pass
  through your deck. Trigger a reshuffle when your discard pile is strong
  and your hand is weak, not right after a big turn put your best cards in
  play.
- Don't fill your discard with junk (Cellar, Warehouse) just before you
  draw into a reshuffle.
- Cards that reveal or look at several cards (Sentry) reshuffle as soon as
  fewer cards are left than they look at.
- When buying: if a few cards remain in your deck, your next hand is mostly
  those cards plus the top of the new shuffle. Buy what improves that hand.
  Early in the game, buy what improves your very next shuffle.

## 4. Don't play everything

- Skip plays that hurt you, such as forced trashing of a card you need, or
  that help the opponent, such as a "steal or swap" attack while they hold a
  Province, or effects that give them cards.
- With one Buy, once you've reached your price, consider stopping so good
  cards stay in your deck for next turn.
- Don't play dead cards that only reveal information to the opponent.

## 5. Choose the buy or gains

- Follow the plan from the kingdom analysis, adjusted to what has happened
  since: did the opponent commit to a plan, did a key pile run low?
- When a buy departs from the plan (a card it didn't name, or a default
  such as Silver in place of a card it did), give a one-line reason. If no
  reason holds up, buy what the plan says.
- Before buying a terminal, count the terminals in your deck including
  this one. Without villages, keep to roughly one per 8–10 cards
  (`context/strategy.md`, "Terminal collision"). Past that, a new
  terminal collides often enough that Treasure or a non-terminal is
  usually the better buy.
- Before a scoring buy, check the endgame (`context/strategy.md`, "Greening
  and the endgame"):
  - the Penultimate Province Rule and its exceptions;
  - the opponent's whole next turn: unused extra turns, stored Coffers,
    Villagers or Favors, cards on mats, and the +Buys and Golds left in
    their current shuffle;
  - three-pile risk: how many gains each player needs to end the game.
- Decide whether to spend or keep Coffers and Villagers for a later price
  point or a bigger turn.

## 6. Responding to attacks

- **Discard attacks** (Militia): keep the best three-card *hand*, not the
  three best cards. A deck that draws can keep Village + Smithy and discard
  Golds.
- **Junking**: when given a choice (e.g. Torturer), don't always take the
  option that keeps your deck clean if it costs you your own key plays.
- Reveal Reactions only when the benefit beats keeping the card's normal
  use.

## Output format

```markdown
**Goal this turn:** <e.g. "$8 + Buy for Province + Duchy">
**Play:** 1. <card> — <why, if not obvious> 2. ...
**Buy/gain:** <cards> — <why; for a terminal, the count against deck size;
for a departure from the plan, the reason>
**Watch:** <endgame or reshuffle notes, if any>
```

If the best line depends on unknown information, give the line for the
likely case and say what would change it.
