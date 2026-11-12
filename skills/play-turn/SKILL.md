---
name: play-turn
description: Choose plays in a Dominion game in progress, including play order, which cards to play or hold, what to buy or gain, when to change plan, the endgame, and responses to attacks (e.g. what to discard to Militia). Use for every decision while playing or advising on a game, each turn and each prompt, not only when asked; also when given a hand and game state and asked what to do, or when reviewing a played turn.
---

# Play a turn

Turn the current game state into plays and a buy, with a one-line reason
for each decision that isn't obvious. Rely on the repo context, especially
`context/strategy.md` for the plan and the endgame.

Decide one play at a time. Work out what the hand could do, then look at
the state again after anything that draws, reveals or asks for a choice.
Only moves that can't change what you know, such as playing Treasures, can
be decided together.

## 1. Read the situation

- Get the hand, cards in play, Durations and mats, and whatever is known
  about your deck and discard pile: their size, what's left in the deck
  since the last shuffle, and good cards waiting in the discard.
- Get the scores, the pile counts (Provinces/Colonies and any pile close to
  empty), and your available Actions, Buys, $, Coffers, Villagers and
  Favors.
- Use the card text supplied with the state. Don't reconstruct it from
  memory. If something needed is missing, say what you assumed.
- Decide what this turn is for: building, greening, ending the game, or
  several of these. Name the price or gains it needs (e.g. "$8 + a Buy",
  "gain 2 villages"). A good draw can make room for both an engine piece
  and a Duchy; a bad one can make the best play a modest gain and a strong
  next hand.
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

## 4. Review the plan at each reshuffle

On the first turn after you reshuffle, compare your deck with the plan:

- Is it on schedule? Check it against the plan's milestones, or "How fast
  decks are" in `context/strategy.md`.
- What does the opponent's deck threaten, and by when?
- Being behind on score while building is expected. Not reaching your
  payoff before the opponent's clock runs out is the reason to change. A
  new plan starts from the deck you have.

## 5. Don't play everything

- Skip plays that hurt you, such as forced trashing of a card you need, or
  that help the opponent, such as a "steal or swap" attack while they hold a
  Province, or effects that give them cards.
- With one Buy, once you've reached your price, consider stopping so good
  cards stay in your deck for next turn.
- Don't play dead cards that only reveal information to the opponent.

## 6. Choose the buy or gains

- Before a gain the plan doesn't settle, look at your whole deck, not just
  this hand. Say what it has and lacks, and what this gain is for: the next
  shuffle, the finished deck, or a pile that decides the game. Early, deck
  control and thinning usually beat payload; once the deck is reliable,
  payload usually wins. A card that is strong in general can be wrong for
  this deck, such as more draw with nothing to play it with.
- Follow the plan from the kingdom analysis, adjusted to what has happened
  since: did the opponent commit to a plan, did a key pile run low?
- When a buy departs from the plan (a card it didn't name, or a default
  such as Silver in place of a card it did), give a one-line reason. If no
  reason holds up, buy what the plan says.
- When asked whether one buy is right ("is Silver right here?"), don't
  confirm it from the plan alone. Compare it with the best other card at
  each price you can pay, and work out the next hand for any candidate that
  changes it (gained to hand, a when-gain effect, a Night card). If the
  comparison shows the plan misread a card, say so and redo the plan.
- Before buying a terminal, count the terminals in your deck including
  this one. Without villages, keep to roughly one per 8–10 cards
  (`context/strategy.md`, "Terminal slots and collision"). Past that, a new
  terminal collides often enough that Treasure or a non-terminal is
  usually the better buy.
- Before a scoring buy, check the endgame (`context/strategy.md`, "Greening
  and the endgame"). Once either player could end the game within a turn
  or two, work out the scores after each option and what the opponent
  would need on their next turn to win. Then apply:
  - the Penultimate Province Rule and its exceptions, to those numbers;
  - the opponent's whole next turn: unused extra turns, stored Coffers,
    Villagers or Favors, cards on mats, and the +Buys and Golds left in
    their current shuffle;
  - three-pile risk: how many gains each player needs to end the game.
- Decide whether to spend or keep Coffers and Villagers for a later price
  point or a bigger turn.

## 7. Responding to attacks

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
**Review:** <first turn after a reshuffle: deck vs plan, both clocks, the call>
**Endgame:** <once the game could end: scores after each option, and what
the opponent would need>
```

If the best line depends on unknown information, give the line for the
likely case and say what would change it.
