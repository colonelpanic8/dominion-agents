# Dominion Strategy Basics

General principles that strong players broadly agree on. Unless noted, they
assume 2-player games, which is how most competitive play happens. Every
kingdom is different: treat these as defaults to check, not laws.

## Core ideas

- **Your deck is your engine of turns.** Each card you add changes the
  average quality of the hands you draw. A card is good if decks that buy it
  produce better turns than decks that don't.
- **Tempo matters.** A typical 2-player game lasts about 15–20 turns per
  player, and strong decks can end it much sooner. Gains early in the game
  compound. Gains late in the game mostly need to be points.
- **Terminal collision.** A *terminal* is an Action that gives no +Action.
  Draw two terminals together without a village and one of them is dead.
  Without villages, keep roughly one terminal per 8–10 cards.
- **Junk and thinning.** Coppers, Estates, Curses and Ruins dilute your good
  cards. *Trashing* them (Chapel, Sentry, Steward, …) concentrates your deck.
  It costs tempo at first and pays off later.
- **Reliability.** A strategy that hits $8 on 70% of turns usually beats one
  that alternates between $11 and $4.

## Cantrips: the "free effect" baseline

A **cantrip** is a card that gives at least +1 Card and +1 Action. Playing
one replaces itself: your hand stays the same size and you keep your Action.

- A *pure* cantrip (+1 Card +1 Action and nothing else) is almost the same
  as not having the card at all. It takes a slot in your deck but costs you
  nothing when you draw it.
- So whatever a cantrip adds on top (+$1, +Buy, trashing, an attack, a
  token) is close to a **free effect**: it improves the deck without
  diluting it. That's why "cantrip plus a bonus" cards (Peddler, Market,
  Sentry, Mill) rarely hurt.
- Familiar shapes built on this baseline: **village** = cantrip + another
  Action, **Laboratory** = cantrip + another Card (non-terminal draw),
  **Market** = cantrip + $1 + Buy.
- Cantrips never cause terminal collision, so they count as deck control
  even when their bonus is payload.

Exceptions, where the "free" effect isn't free:

- **Opportunity cost**: buying the cantrip spends a gain that could have
  been a Silver, Gold or a key card. Early on, a weak cantrip is usually
  worse than Silver for a money deck.
- **Nothing left to draw**: once you've drawn your whole deck, +1 Card does
  nothing, and the card is only its bonus.
- **Reshuffle timing**: a cantrip that draws into a reshuffle can leave
  your best cards (still in play or in hand) out of the next shuffle.
- **Card-count effects**: some cards care about how many cards you have
  (Gardens and other alt VP, "draw until N in hand"), or about what's in
  hand. Check these interactions.

## Payload and deck control

A way to classify what each card does for your deck, from Adam Horton's
[Payload and Deck Control](https://adamhorton.com/flog/dominion-payload-and-control/).

- **Payload**: cards that do the things that win the game. Usually that's
  money plus +Buy to buy Victory cards, cards that gain Victory cards, or VP
  tokens. Payload counts *relative* to the opponent, so attacks, denying a
  key pile, and the ability to end (or threaten to end) the game on piles
  while ahead are payload too. Early in the game, gainers such as Workshop
  are payload that builds the deck rather than scoring.
- **Deck control**: cards whose job is to let you play your other cards.
  That means draw, villages, cantrips, trashing and sifting. Junking the
  opponent attacks *their* deck control.
- **Dead cards**: neither of the above. Examples are Victory cards and
  Curses once they're in your deck, and a trasher you no longer need.
- **Hybrids** (e.g. Grand Market, Torturer) are both payload and deck
  control. They're usually very strong, and often the right move is to add
  them as fast as possible.

How to use it:

- **Before the game**, work out the best payload this kingdom allows, given
  its deck control. Ten Bridges is no payload without villages to play them.
  If the ceiling is about one Province per turn, a complex deck rarely beats
  Big Money. Without +Buy or gaining, a perfect engine still scores slowly.
- **If deck control is weak** (no villages, draw or trashing), you won't
  reliably play your full payload, so build less.
- **Once your deck is under control**, balance adding payload against still
  drawing most or all of your deck each turn. Name the role of each card you
  add.

## The Big Money baseline

"Big Money" means buying only Treasures and Victory cards. It's the
benchmark every plan should be measured against.

- Buy Province at $8, Gold at $6–7 and Silver at $3–5. Start buying Duchies
  at $5–7 once 4–5 Provinces are left, and Estates at $2–4 near the very end.
- **Big Money + X** adds one or two copies of a strong terminal, such as
  Smithy, a good attack or a strong draw card. It is a solid default when
  the kingdom offers nothing better. A good BM+X deck takes 4 Provinces by
  roughly turn 14–17.
- **Big Money doesn't choke.** Optimized plain Big Money keeps taking about
  one Province every other turn for as long as the game lasts. On its own
  it empties all 8 Provinces in roughly 21–23 turns
  ([ragingduckd, "The Myth of Big Money Choking"](http://forum.dominionstrategy.com/index.php?topic=9512.0)).
  Don't assume a money opponent stalls once they green. Use these numbers as
  the race clock any slower plan has to beat.
- Any plan that can't beat a competent BM+X in this kingdom is a mistake.

## Archetypes

- **Engine**: heavy deck control (villages, draw, thinning) plus +Buy and
  payload. Aim to draw most of your deck each turn and gain several cards,
  often more than one Province, per turn. Engines start slower but win long
  games (see "Engines" below).
- **Money / BM+X**: few Actions, lots of Treasure, greens early. Strongest
  when the kingdom lacks villages, draw or thinning, or when attacks punish
  slow decks.
- **Slog**: heavy junking (Curses, Ruins) or no good draw make big turns
  impossible. Gain many cards, value cheap or alternative VP, and expect a
  long game.
- **Rush**: race to empty three piles, e.g. Workshop/Gardens or a cheap
  pile plus +Buy. Strong only when the kingdom enables it and the opponent
  can't punish it.
- **Combos**: a plan built around a specific interaction (see below). Always
  look for them, but check that they beat the plain options.

## Engines

### What counts as draw and villages

Adam Horton's articles on [draw](https://adamhorton.com/flog/dominion-draw/)
and [villages](https://adamhorton.com/flog/dominion-villages/) give a useful
way to check whether a board can support an engine at all:

- **Draw** is any combination of cards that increases your hand size
  without reducing the Actions you have left. A Laboratory does this alone.
  Smithy does it only alongside a village, and only one that leaves the net
  result positive: Festival + Moat gives no draw, since Festival doesn't
  draw a card and Moat's +2 Cards just replaces the two cards played.
- **A village** is anything that lets you play more than one terminal in a
  turn. That includes Throne Room and King's Court. Cards that only give
  +Actions without enabling another terminal, like Conspirator, Ruined
  Village or Vassal, are not villages.
- Many cards draw or act as villages only with support: an action-dense
  deck, a way to line cards up, a pile emptying, Favors, a specific trasher.
  Before relying on one, check that this board provides that support.
- So ask "which combination of cards here actually increases hand size?"
  rather than "is there a draw card?". If the answer is none, no engine is
  possible.
- Once an engine draws its whole deck each turn, its output depends on
  *everything* in the deck, not the average card. Each payload card adds
  directly, which is why engines keep growing. Greening and junk erode
  this, so it has to be maintained.

### When to build one

Build an engine when all of these hold:

1. Real draw exists, by the test above, with villages that actually work
   with it.
2. There is trashing, or the draw is strong enough to beat the junk. Strong
   engines can overcome Curses.
3. Payload scales past one Province per turn: +Buy, gainers, VP tokens or a
   repeatable attack.
4. It wins the race against the Big Money baseline: it can take double
   Provinces by the mid-teens, or control when the game ends.
5. The pieces are affordable and available: not all at $5+, and not one
   contested split pile.

Don't build one, or build less, when:

- The only "draw" is cantrips. Play a deck of non-terminals plus the best
  terminal, with good money.
- There are villages with no draw, or terminal draw with no villages.
- There's no +Buy, gaining or alternative payload, so the payload ceiling is
  one Province per turn.
- The opponent can three-pile or rush faster than the engine comes online.

### How to build one

- Open with trashing and economy, so you can afford the parts.
- Add villages and draw together, keeping enough Actions for your
  terminals.
- Get +Buy, and add payload once the deck draws itself reliably.
- Green only once you can take several Provinces per turn, and keep adding
  draw so greening doesn't stall the deck.
- Don't overbuild: stop once the payload ceiling is reached, and start
  scoring.

## Interactions to look for

Many boards are decided by how two cards (or a card and a landscape) work
together. Scan the kingdom for these patterns:

- **Benefits from trashing**: trashers paired with cards that reward being
  trashed or trashing. Fortress returns to hand when trashed. Market Square
  gains a Gold when one of your cards is trashed. Procession + Fortress
  plays Fortress twice and gains a card costing $1 more.
- **Gainers + on-gain effects**: Workshop-style gainers feeding "when you
  gain this" cards, e.g. Border Village also gains a cheaper card.
- **Cost reduction + gainers or +Buy**: lower costs let "gain a card
  costing up to $4" reach better cards and stretch each $, e.g. Highway or
  Bridge with Ironworks, King's Court + Bridge.
- **Multipliers on the right target**: Throne Room, King's Court and
  Procession on strong terminals, Durations and one-shots. Watch the risk
  of drawing a multiplier with nothing to multiply.
- **Draw-to-X + cards that shrink your hand**: Library draws up to 7, so it
  loves Festival and other villages that don't draw.
- **Discard for benefit + discarders**: Tunnel gains a Gold when discarded
  outside Clean-up, so it pairs with Warehouse or Vault, or an opponent's
  Militia.
- **Alternative VP + enablers**: Gardens + Workshop (a rush), Duke +
  Duchy, and cards that make a cheap pile score.
- **Landscapes changing what cards do**: Way of the Mouse borrows a
  set-aside card. A Way can turn junk Actions such as Ruins into something
  useful. Events can supply +Buy where the Kingdom has none. A Trait such as
  Cheap can land on a key pile.
- **Counters**: cards that blunt the opponent's attack or plan. Library
  refills after a handsize attack, trashing removes Curses, and on-gain
  Reactions can swap a Curse for a Silver.

An interaction is only worth building around if the result beats the plain
options, starting with Big Money + X.

## Openings

- Turns 1–2 give $7 between them, split 4/3 or 5/2 (5/2 is about 1 in 6).
- High-value opening buys: trashers, gainers, strong attacks (especially
  junking ones like Witch or Sea Witch), and economy that scales, such as
  Silver-plus-effect cards and Coffers.
- With 5/2, a strong $5 (Witch, Laboratory-class draw) plus a $2 trasher
  (Chapel, Lookout) can be much stronger than 4/3. Avoid a 5/2 that leaves
  the $2 slot weak.
- Don't open with two terminals that collide often unless their payoff is
  worth it.

## Attacks and defense

- **Junking** (Curses, Ruins) is the strongest attack class: it costs the
  victim tempo and points. Mirror it early, or plan to trash the junk.
- **Hand-size attacks** (Militia, Ninja) hurt money decks and are weaker
  against decks that draw after the attack.
- **Trashing and deck attacks** (Knights, Swindler) are swingy.
- Defend with draw that refills your hand, with trashing, and with
  Reactions only when they're actually good.

## Greening and the endgame

- Start buying Victory cards ("greening") when the remaining turns are few
  enough that the points beat the economy you give up. Engines green late
  and fast. Money greens early.
- Track the score, the Province count and how close any piles are to empty,
  every turn.
- **Penultimate Province Rule**: don't buy the second-to-last Province if
  that lets your opponent win by buying the last one. A Duchy can be better.
- Three-pile endings are a real threat with +Buy and cheap piles. Count how
  many gains each player can make to empty the piles.
- Colony games last longer and favor engines and Platinum economies.

## Multiplayer (3–6 players)

- Attacks hit more opponents, so junkers are stronger and games are longer.
- There's less interaction with any one opponent's plan, and each player
  gets fewer turns relative to the end conditions.
- Three-pile endings (four with 5–6 players) come sooner than you'd expect.
