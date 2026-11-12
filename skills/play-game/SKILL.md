---
name: play-game
description: Play a whole game of Dominion as one seat through a `dominion` MCP server (dominion-engine or dominion-navigator), from the kingdom plan through every decision to a review afterwards. Use when asked to play a game, play against a bot or another agent, or carry on with a game in progress.
---

# Play a game

Play one seat from the first decision to the result. The server's tools are the
same on every producer and are specified in `protocol/tools.md`. The view and
its decisions are specified in `protocol/README.md`. This skill is the loop
around them: `kingdom-analysis` makes the plan, `play-turn` decides the hard
turns, and this skill decides how much thought each decision gets.

## Ground rules

- Know only what your seat may know. Never call a debugging tool (`inspect`
  or anything that says it reads hidden state), and never use another seat's
  token, even one `new_game` handed you.
- Don't sit down against human opponents unless the operator said to. A
  `REFUSED` error is the server enforcing that, so report it and stop.
- Trust the view over your memory. It tracks every card you could know about,
  including your own deck. Your notes only need to hold the plan and the
  deck it is building toward.

## 1. Start or rejoin

Call `state` first. If you already have a game in progress, carry on with it.
Otherwise call `new_game` with what the operator asked for (kingdom, bots,
seats). Its result is your first full view.

## 2. Make the plan

Run `kingdom-analysis` on the kingdom in the
first view. The `CARDS` block has the text of every card. Keep the result as a
short game plan, about ten lines:

- the plan and the reason it beats Big Money here;
- the opening for each split;
- the deck you are building toward, in a line: its shape and the
  balances that matter (e.g. "a village per Smithy, 2 +Buys, Estates
  gone"), and what it needs first. This is a direction, not an order of
  buys: each gain is judged from the deck's composition at the time, and draws, prices and the opponent will call for changes;
- when you start greening;
- what to watch for: the opponent's possible attacks or plan, and key or
  contested piles.

The plan is the only thing you carry between decisions. If the game is past
its opening when you join, still write the plan, from the current view.

## 3. Answer decisions

Each `step` result shows what changed and your next decision. A game has
roughly 30–60 decisions. Most are routine, but the gains and a few plays
decide the game, and those are where a deck drifts away from its plan.

Your thinking is what you write before you answer. A decision answered
without its reasoning written out gets made from habit, not from the plan.
So before each decision that isn't routine, write the reasoning its level
asks for below, then call `step`. This is not the operator chatter that
"Talking to the operator" limits.

- **Routine**: no other answer could change the deck or this turn's
  result. Examples are playing Treasures when no card reacts to their
  order, ending a phase with nothing worth playing, or the only legal
  answer. Answer it straight away, several in one call where allowed. If
  you aren't sure a decision is routine, it isn't.
- **Play**: which Action to play, in what order, which card to hold. Write
  a line or two: what the hand could do this turn, and which play gets
  there. Use `play-turn`: make each decision as it comes, and look at the
  state again after every draw or reveal. Answer several moves in one call
  only when nothing between them draws, reveals or asks for a choice.
- **Deck change**: every buy or gain, including buying nothing and gains
  from a card such as Workshop, and every choice of what to trash, Exile or
  otherwise remove for good. These shape every hand for the rest of the
  game, so even one the plan seems to settle gets `play-turn`'s written
  gain check (step 6): what the deck's composition needs now, the
  candidates, and the pick. Read the composition from your player view's
  `owns` line (`owned` in JSON), which lists every card you own. It usually takes two to four lines. A choice that is close to this, such as a Throne Room target, a
  Reaction to reveal or Coffers to spend, gets the same care.
- **Full check**: also run `play-turn`'s endgame and attack-response steps,
  and write out their numbers, when the decision is any of these:
  - a buy or gain once the game could end within two turns;
  - a response to an attack;
  - a choice involving a card you haven't judged yet (new `CARDS` lines, an
    unplanned Loot or Reward, a card the opponent just started buying).

These lists aren't complete. For any decision they don't name, ask whether
a different answer could change what your deck holds or what this turn
produces. If it could, treat it as a play or a deck change.

Mechanics:

- Read indices from the latest `DECISION` only. They change from one decision
  to the next: after a buy, the piles you can no longer afford are gone and
  the rest move up, so the number that was Silver can now be Curse.
- With every `indices`, give `expect`: the label each index is meant to
  choose, in the same order (`indices: [2], expect: ["Buy Silver"]`). An index
  that points at something else is then rejected instead of played.
- Check each group's `min` and `max`. `indices: []` chooses nothing. For an
  ordered decision, list the top card first.
- After a `REJECTED` error, read the reason and the decision that came with
  it, then answer that. Don't resend the same answer.
- On `WAITING`, call `wait`. Call `state` only when you've lost track: it
  prints everything. Use `log` for older history.

## 4. Revisit the plan

Check the plan against the view, in a line or two, at each of these moments:

- the first turn after each of your reshuffles (`play-turn`, "Review the
  plan at each reshuffle");
- the opponent's opening is visible (after their second turn), and whenever
  they start buying something new;
- your deck starts drawing itself, so it is time to switch to payload;
- a pile you or they need runs low;
- someone buys the first Victory card.

At the review on the first turn after a reshuffle, write the whole plan out
again, updated, even if nothing changed. In a long game the plan you made at
the start is far behind you, and the copy you just wrote is the one you will
follow. When the plan changes, say what changed and why.

## 5. Finish and review

On `GAME OVER`, report to the operator:

- the result line (VP, turns, how the game ended);
- the plan you made, and whether you kept to it;
- the one or two turns or decisions that decided the game, each with what you
  would do differently, if anything;
- anything the server got wrong or showed confusingly (a missing card text, a
  decision you couldn't express), so the producer can be fixed.

Keep the report short. Don't write lessons into the repository unless asked.

## Talking to the operator during play

Keep reports short: the plan once it is made, any change to it, and the
result. That limit is on reports, not on reasoning. The reasoning that
section 3 asks for is written as you go, and stays as long as the decision
needs. If the server breaks (errors that aren't about your answer, a
game that stops advancing), stop and report what you called and what came
back, rather than guessing around it.
