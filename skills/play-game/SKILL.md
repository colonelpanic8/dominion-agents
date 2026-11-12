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
  including your own deck. Your notes only need to hold the plan.

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
- the build order, and the point at which you start greening;
- what to watch for: the opponent's possible attacks or plan, and key or
  contested piles.

The plan is the only thing you carry between decisions. If the game is past
its opening when you join, still write the plan, from the current view.

## 3. Answer decisions

Each `step` result shows what changed and your next decision. Spend thought
where it changes the outcome. A game has roughly 30–60 decisions, and most of
them are routine.

- **Routine**: the plan already settles it and nothing in view cares about
  the choice. Examples are playing Treasures when no card reacts to their
  order, ending a phase with nothing worth playing, or the only sensible play.
  Answer it straight away.
- **Turn plan**: at the start of a turn with real choices (Actions to order,
  a buy the plan doesn't settle), work out the whole turn with `play-turn`.
  Then answer its decisions in order. Re-plan only when a draw or a reveal
  changes what you know.
- **Full check**: run `play-turn`'s endgame and attack-response steps when the
  decision is any of these:
  - a buy or gain once the game could end within two turns;
  - a response to an attack;
  - a choice involving a card you haven't judged yet (new `CARDS` lines, an
    unplanned Loot or Reward, a card the opponent just started buying).

Mechanics:

- Read indices from the latest `DECISION` only. They change from one decision
  to the next.
- Check each group's `min` and `max`. `indices: []` chooses nothing. For an
  ordered decision, list the top card first.
- After a `REJECTED` error, read the reason and the decision that came with
  it, then answer that. Don't resend the same answer.
- On `WAITING`, call `wait`. Call `state` only when you've lost track: it
  prints everything. Use `log` for older history.

## 4. Revisit the plan

Check the plan against the view, in one line, at each of these moments:

- the opponent's opening is visible (after their second turn), and whenever
  they start buying something new;
- your deck starts drawing itself, so it is time to switch to payload;
- a pile you or they need runs low;
- someone buys the first Victory card.

When the plan changes, say what changed and why, and update it.

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

Say little while playing. Report the plan once it is made, any change to it,
and the result. If the server breaks (errors that aren't about your answer, a
game that stops advancing), stop and report what you called and what came
back, rather than guessing around it.
