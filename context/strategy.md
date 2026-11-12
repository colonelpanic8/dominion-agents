# Dominion Strategy Basics

General principles that strong players broadly agree on. Unless noted, they
assume 2-player games, which is how most competitive play happens. Every
kingdom is different: treat these as defaults to check, not laws.

## Core ideas

- **Your deck is your engine of turns.** Each card you add changes the
  average quality of the hands you draw. A card is good if decks that buy it
  produce better turns than decks that don't.
- **Tempo matters.** Games between strong players mostly end between turns
  11 and 15, and the fastest decks end them by turn 8 or 9 (see "How fast
  decks are"). Gains early in the game compound. Gains late in the game
  mostly need to be points.
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
  Look everywhere for what lifts the ceiling past one Province per turn:
  +Buy on a card, an Event or a token, gainers, cost reduction, VP tokens,
  Victory cards other than Province. Only when none of it is there does a
  complex deck rarely beat Big Money.
- **If deck control is weak** (no villages, draw or trashing), you won't
  reliably play your full payload, so build less.
- **Once your deck is under control**, balance adding payload against still
  drawing most or all of your deck each turn. Name the role of each card you
  add.

## The Big Money baseline

"Big Money" means buying only Treasures and Victory cards. It is the floor
every plan is measured against. On most boards it is not the answer.

- **Most kingdoms have something better.** With expansion cards on the
  board there is usually an engine, a combo or a scoring trick that beats
  any money deck, and strong players look for it first. Money is what they
  play when that search fails: mostly on boards with no village, no real
  draw, or no payload beyond one Province per turn. Recommending BM+X on a
  board that has all three needs a worked line in which the better-looking
  plan loses.
- Buy Province at $8, Gold at $6–7 and Silver at $3–5. Start buying Duchies
  at $5–7 once 4–5 Provinces are left, and Estates at $2–4 near the very end.
- **Big Money + X** adds one or two copies of a strong terminal, such as
  Smithy, a good attack or a strong draw card. It is a solid default when
  the kingdom offers nothing better. A good BM+X deck takes 4 Provinces by
  roughly turn 14–17.
- **Choosing X when the opponent also plays money**: count what each X
  takes from their turns as well as what it adds to yours. A money deck
  has no draw to recover lost cards, so a hand-size attack turns many of
  its Province hands into Gold hands and its Gold hands into Silver hands.
  That is often worth more than a second draw card.
  Plan enough copies to play the attack on most turns, within the terminal
  limit (see "Terminal collision"), rather than one copy that is played
  about one turn in three.
  Hypothesis, from a rough simulation of one board without villages
  against a money bot: Militia with Smithy beat Smithy-BM, and two Militias
  beat both by a wide margin. The size of the gap is unconfirmed.
- **Big Money doesn't choke.** Optimized plain Big Money keeps taking about
  one Province every other turn for as long as the game lasts. On its own
  it empties all 8 Provinces in roughly 21–23 turns
  ([ragingduckd, "The Myth of Big Money Choking"](http://forum.dominionstrategy.com/index.php?topic=9512.0)).
  Don't assume a money opponent stalls once they green. Use these numbers as
  the race clock any slower plan has to beat.
- A plan that can't beat a competent BM+X in this kingdom is a mistake. So
  is BM+X in a kingdom that offers a plan that beats it, and that is the
  more common mistake of the two.

## Archetypes

- **Engine**: heavy deck control (villages, draw, thinning) plus +Buy and
  payload. Aim to draw most of your deck each turn and gain several cards,
  often more than one Province, per turn. Engines start slower and then
  score several times faster. Where the board supports one it is usually
  the best plan (see "Engines" below).
- **Money / BM+X**: few Actions, lots of Treasure, greens early. Strongest
  when the kingdom lacks villages, draw or thinning, or when attacks punish
  slow decks.
- **Good-stuff deck**: no real draw, but several good non-drawing
  terminals, cantrips and Silver-like cards. Buy whatever helps your next
  turn most, add Silver and better Treasure, and skip terminal draw.
  Junking attacks push toward this deck. A lone village earns its place only
  once you have several terminals worth playing together
  ([Wandering Winder](http://wanderingwindergames.blogspot.com/2015/07/dominion-good-stuff-deck.html)).
- **Slog**: heavy junking (Curses, Ruins) or no good draw make big turns
  impossible. Gain many cards, value cheap or alternative VP, and expect a
  long game.
- **Rush**: race to empty three piles, e.g. Workshop/Gardens or a cheap
  pile plus +Buy. Strong only when the kingdom enables it and the opponent
  can't punish it.
- **Combos**: a plan built around a specific interaction (see below). Always
  look for them, and judge each by the best deck that can be built for it.

## How fast decks are

Reference points for a race, from commentated top-level games and designers'
solo playtests. They assume a strong player and no interference.

- **Money**: BM+X has 4 Provinces around turn 14–17 and doesn't speed up.
- **Engines**: a well-built engine has its first big turn (two or more
  Provinces, or the same in other VP) around turn 8–11, and wins or ends the
  game by turn 11–14. No trashing, pieces at $5 or a junker each cost it a
  turn or two. They rarely cost it the race.
- **Combos and one-huge-turn decks**: the fast ones finish in 8–10 turns,
  and a few have their one turn as early as turn 7.
- **Whole games** between strong players mostly end between turns 11 and
  15. A plan still building on turn 14 is usually too slow. So is a money
  deck that needs until turn 17 on a board where any of the above exists.

An estimate made without playing the line out runs late for an unfamiliar
deck, often by five turns or more. It counts one gain per turn, leaves out
the helpers and stops at the first stall. For money it is about right,
because money is simple. So "the engine arrives around turn 15" is weak
evidence against the engine, and "money has 4 Provinces by turn 15" is no
reason to pick money. Play the line out (the `kingdom-analysis` skill,
step 6) before trusting either.

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
  turn. That includes Throne Room and King's Court. Cards that at best
  replace the Action they use, like Conspirator, Ruined Village or Vassal,
  are not villages.
- Many cards draw or act as villages only with support: an action-dense
  deck, a way to line cards up, a pile emptying, Favors, a specific trasher.
  Before relying on one, check that this board provides that support.
- A village that works once per turn (Crossroads), or only under a
  condition, caps how many terminals you can play. Count the Actions a real
  turn gets, not the number of village cards.
- **Setting up the next hand counts too.** Durations that draw at the start
  of the turn, gains that land on top of your deck, and cards that order the
  top of your deck all put chosen cards into your next hand without using
  Actions. If something can put the same key card (the only village, the
  trasher, the payoff) in your hand every turn, an engine that looks
  inconsistent may be reliable.
- So ask "which combination of cards here actually increases hand size?"
  rather than "is there a draw card?". If the answer is none, no engine is
  possible.
- Once an engine draws its whole deck each turn, its output depends on
  *everything* in the deck, not the average card. Each payload card adds
  directly, which is why engines keep growing. Greening and junk erode
  this, so it has to be maintained.

### When to build one

Build an engine when the board passes two tests:

1. Real draw exists, by the test above, with villages that actually work
   with it.
2. Payload scales past one Province per turn: +Buy, gainers, cost
   reduction, VP tokens, alternative VP or a repeatable attack.

When both hold, the engine is the default plan, and a money deck has to
show with a worked line that it gets there first. Everything else is an
obstacle to solve with what the board offers, not a reason to give up:

- **No trashing**: add more draw, sift, or let gains outgrow the starting
  cards. Strong engines overcome Coppers, Estates and even Curses.
- **Every piece costs $5 or more**: build economy first, use gainers and
  cost reduction, and count the pieces the deck needs. It is usually fewer
  than it looks.
- **An expensive or conditional village**: find what meets the condition,
  or what puts the village in your hand every turn.
- **One contested pile**: count the copies you need and whether the
  opponent wants them. If the split decides the game, contest it.
- **A junker**: take it yourself (see "Attacks and defense").

Check each fix by writing the build out turn by turn. A piece that looks
slow is not evidence either way.

Don't build one, or build less, when:

- The only "draw" is cantrips. Play a good-stuff deck instead (see
  Archetypes).
- There are villages with no draw, or terminal draw with no villages.
- After checking every card and landscape, the payload ceiling is still one
  Province per turn.
- The opponent can three-pile or rush before the engine's first big turn
  (see "How fast decks are" for when that is).

### How to build one

- Open with trashing and economy, so you can afford the parts.
- **Build fast.** Gaining one card per turn is too slow. +Buy and
  Workshop-style gainers roughly double the build rate, and Remodel-style
  gainers turn Estates into engine parts. Prefer a $5 engine piece over
  Gold.
- Keep at least as many villages as terminal draw cards. Get draw before
  payload, unless the payload is a strong attack.
- **Actions and cards at the start of the turn are worth the most**,
  because that's when turns stall. Duration villages and duration draw
  (Fishing Village, Wharf) give them before you draw anything. Spread them
  across turns rather than bunching them.
- Aim for one or two cards of spare draw beyond exactly enough. That makes
  the deck consistent, which matters most against attacks and when you're
  ahead. Spare draw can be spent by gaining a card mid-turn and drawing it.
  If you're drawing everything but short on money, you trashed Coppers too
  fast.
- Stop adding Treasure once the deck draws itself, and add payload once it
  does so reliably.
- Don't overbuild past the payload ceiling. But when unsure whether to
  green, one more building turn usually costs less than it seems.

### Building for one huge turn

Some decks score almost everything on one turn. They come in two kinds:

- **Payload that multiplies**: each copy played in the turn makes the
  others worth more. Cost reduction with +Buy (Bridge) is the usual case.
  Anything that pays per card played, gained or in play that turn works the
  same way. Count copies against the target, as you would count Bridges
  against the Province pile: how many, played in one turn, end the game or
  put it out of reach? Get that many, not one or two, and build the deck to
  play them together.
- **Saved resources**: cards on mats (Native Village), Reserve cards, banked
  Coffers, Villagers or Favors. Saved resources do nothing while you build,
  so when the payload doesn't multiply, playing it every turn usually
  builds faster.

For both kinds:

- These decks green only on the big turn, so they look far behind until it
  comes. Judge them by the turn it arrives (see "How fast decks are"), not
  by the score before it.
- Attacks of every kind hurt a saving deck badly. Check the opponent's
  attacks before committing.
- Start the big turn only when you can see it through, since a turn that
  fizzles partway can lose on the spot. If it can't end the game, make sure
  the opponent's best reply can't win.

## Economy: Gold, Treasure gainers and Coffers

- **Gold in an engine** is a card that doesn't draw, so it can stop your
  turn. Add it late, once draw can absorb it, and prefer gaining it free
  over buying it.
- **Treasure gainers**: time them for when the deck can draw the gained
  Treasure that turn. In money decks they free your buys for other things.
- **Coffers**: spend them early, because early gains compound. In the
  midgame keep one or two to hit key prices. Late, hoard them to guarantee
  $8 or to threaten a turn with several Provinces (with +Buy). A second
  source of Coffers adds less than the first.

## Interactions to look for

Many boards are decided by how two cards (or a card and a landscape) work
together. Nearly every interaction is one card supplying something another
card wants: a gain, a discard, a trash, a card on top of the deck, a type, a
card in play.

Look for them before the game, and again during it whenever a new card
appears: a Black Market reveal, a Loot, a card the opponent starts buying.

**This list is not complete.** It shows the kinds of things cards care
about, so that you recognise the same shape in cards that aren't named
here. Expect a board to have interactions that fit none of these. When a
card on the board cares about something, find what on the board supplies
it, whether or not the pair appears below.

### Something happens to a card

- **Benefits from trashing**: trashers paired with cards that reward being
  trashed or trashing. Fortress returns to hand when trashed. Market Square
  gains a Gold when one of your cards is trashed. Procession + Fortress
  plays Fortress twice and gains a card costing $1 more.
- **Gainers + on-gain effects**: Workshop-style gainers feeding "when you
  gain this" cards, e.g. Border Village also gains a cheaper card.
- **Discard for benefit + discarders**: Tunnel gains a Gold when discarded
  outside Clean-up, so it pairs with Warehouse or Vault, or an opponent's
  Militia. Discards from the top of the deck count too.
- **Cards that play themselves**: a card that plays itself when gained or
  discarded (Trail) uses no Action. A terminal gainer that gains one gets
  its Action back, and any discard effect becomes a way to play it.
- **VP per gain or per play + cheap repeats**: VP tokens earned each time
  you gain or play something (Collection, Groundskeeper, Monument) pair with
  +Buy, cheap piles, cards that gain two at once, and anything that replays
  the scoring card.

### Where cards are

- **Top-of-deck control + a key card**: a gain that lands on your deck
  (Artificer, Tiara), a card put back from your hand (Courtyard), or the top
  of the deck put in order (Cartographer) decides part of your next hand.
  Use it to draw this turn's gains next turn, or to have the key card every
  turn.
- **Using a card twice**: anything that returns a played card to your deck
  or hand, or plays a card from somewhere other than your hand, can make
  one card work twice. Scheme puts an Action back on your deck, Herbalist
  does it for a Treasure, and Royal Carriage replays an Action. Check
  whether something else on the board can draw or play the returned card
  again in the same turn.
- **Where a gained card lands**: some cards are gained to your hand or onto
  your deck. A Night card gained to hand (Ghost Town, Guardian) works the
  turn you buy it, because Night comes after the Buy phase.
- **Draw-to-X + cards that shrink your hand**: Library draws up to 7, so it
  loves Festival and other villages that don't draw.
- **Hand contents**: cards that reward a particular hand (Menagerie wants
  no duplicates, Shanty Town wants no Actions) pair with trashing,
  discarding and Villagers.
- **Cards in play**: cards that check or count what is in play (Peddler's
  cost, Berserker's "an Action in play") pair with cheap cantrips and with
  Durations still out from last turn.

### What a card is

- **Cost**: trash-for-benefit cards (Salvager, Apprentice) want cards whose
  cost is high compared with what you paid: a Gold gained for free, Border
  Village, Peddler at its full $8 in the Action phase.
- **Cost reduction + gainers or +Buy**: lower costs let "gain a card
  costing up to $4" reach better cards and stretch each $, e.g. Highway or
  Bridge with Ironworks, King's Court + Bridge.
- **Types**: cards that count or check types want multi-type cards or a
  deck dense in one type. Courtier pays out per type, Ironworks gives both
  bonuses for an Action–Victory card, Vineyard counts Actions, and
  Crossroads draws per Victory card.
- **Names**: cards that reward differently named cards (Fairgrounds) want
  cheap variety, mixed piles and +Buy.
- **Multipliers on the right target**: Throne Room, King's Court and
  Procession on strong terminals, Durations and one-shots. Tiara and Crown
  do the same for Treasures that do something when played. Watch the risk
  of drawing a multiplier with nothing to multiply.

### Resources and piles

- **Tokens standing in for a missing piece**: Villagers let terminal draw
  work on a board with no village. Coffers smooth out awkward prices.
- **Piles**: cards that improve as piles empty (City, Animal Fair) pair
  with piles that drain fast: Curses under a junker, cheap piles, cards
  that gain copies of themselves. Cards that take from or return to the
  Supply (Lurker, Experiment) change who can end the game.
- **Alternative VP + enablers**: Gardens + Workshop (a rush), Duke +
  Duchy, and cards that make a cheap pile score.

### Landscapes and the opponent

- **Landscapes changing what cards do**: Way of the Mouse borrows a
  set-aside card. A Way can turn junk Actions such as Ruins into something
  useful. Events can supply +Buy where the Kingdom has none. A Trait such as
  Cheap can land on a key pile.
- **The opponent's turn**: some Reactions act when the opponent does
  something you can predict, such as gaining a Province (Fool's Gold) or any
  Victory card (Black Cat). They change what greening costs the opponent.
- **Counters**: cards that blunt the opponent's attack or plan. Library
  refills after a handsize attack, trashing removes Curses, and on-gain
  Reactions can swap a Curse for a Silver. Check the other direction too:
  your discard attack triggers the opponent's when-discarded cards, and
  cards you make them gain can help them.

An interaction is worth building around when the best deck built for it
beats the plain options, starting with Big Money + X. Build that deck before
deciding: an interaction judged inside a deck made for something else
always looks weak. Known game-deciding combos are listed in
`context/combos.md`.

## Openings

Sources: Adam Horton's
[Discipline in the Opening](https://adamhorton.com/flog/dominion-discipline-in-the-opening/)
and general community consensus.

- With the standard starting deck, turns 1–2 give $7 between them, split
  4/3 or 5/2 (5/2 is about 1 in 6). Heirlooms and Shelters change the
  starting deck, and some Heirlooms change the money: Cursed Gold makes the
  total $9. Work the splits out from the actual deck.
- **What the opening is for**, in order: trashing or a junking attack
  first, then gainers. Draw and payload rarely drive the opening. Buying
  Silver to reach $5 for a key $5 trasher or junker counts as working
  toward that goal. Opening a plain village is almost never right.
- **The turn 3–4 test**: if an opening buy won't do something useful on
  turn 3 or 4, look hard for something better. Durations and Reserves often
  miss the second shuffle. Know which price you need on turns 3–4 and avoid
  openings unlikely to hit it.
- **Turn order**: going first, an attack like Militia drawn on turn 3 can
  deny the opponent's first $5. Going second, it's much weaker, because you
  must draw it on turn 3 exactly.
- With 5/2, a strong $5 (Witch, Laboratory-class draw) plus a $2 trasher
  (Chapel, Lookout) can be much stronger than 4/3. Avoid a 5/2 that leaves
  the $2 slot weak.
- Buying nothing is a real option. A card that doesn't help the plan makes
  the deck worse, so with nothing useful at a price, pass.
- Don't open with two terminals that collide often unless their payoff is
  worth it.

## Trashing in practice

- With Chapel, on turn 3 or 4 trash your whole hand, even if it's only
  Coppers. The exception is a hand holding your other opener.
- After the first big trashing turn, keep enough money to buy what you
  need. Don't thin so hard you lose your economy.
- A trasher that goes dead late in the game has usually already paid for
  itself.

## Attacks and defense

- **Junking** (Curses, Ruins) is the strongest attack class: it costs the
  victim tempo and points.
  - Take a junker even when the board has trashing: slowing the opponent is
    still worth it.
  - You can ignore a junker only if your deck will draw itself before more
    than about one junk card per turn arrives.
  - Trashing Curses as your main plan usually loses, unless the trasher is
    very efficient. Lower your sights instead (Duchies).
  - With a junker in play, the Curse pile will empty. Curses plus Duchies
    make two of the three piles, so a three-pile ending is the money
    player's main weapon against an engine. Curses that players give
    themselves (Cursed Gold, Ritual) drain the pile much more slowly.
  - With a stacking attack like Torturer, don't always take the option that
    keeps your deck clean if it costs you your own attack plays.
- **Play an attack every turn**: if you can only play one attack per turn,
  still buy several copies so you play one every turn. A Duration attack
  stays in play through your next turn, so it takes two copies to attack
  every turn. The first copy of an
  attack on the opponent's economy is high priority, because it can stop
  them reaching the price of their own copy.
- **Hand-size attacks** (Militia, Ninja) hurt money decks and are usually
  weaker against decks that draw after the attack. The exception is
  attacks that punish drawing (Frigate): there, an attacking money deck can
  beat draw-heavy decks.
- **Trashing attacks** (Knights, Swindler): lean on gainers and rely less
  on Treasure.
- Defend with draw that refills your hand, with trashing, and with
  Reactions only when they're actually good. Attacks lengthen the game and
  make three-pile endings likelier.

## Greening and the endgame

- Start buying Victory cards ("greening") when the remaining turns are few
  enough that the points beat the economy you give up. The faster your deck
  can still improve, the later you green:
  - Gardens rush: immediately.
  - Duke/Duchy slog: once you reliably hit $5.
  - One-buy money decks: once you reliably hit $8.
  - Engines: once they reliably produce enough for two or three Provinces
    per turn ($13–18+).
  - Decks aiming for one huge final turn: only on that turn.
- Engines green late and fast. In engine mirrors, green earlier than you
  would against money. When behind against money, don't panic-green.
- **VP that adds no card to your deck** (VP tokens, and Landmarks or Events
  that pay them) has no greening cost. It can be taken while still building,
  so scoring starts much earlier than the list above suggests, and the
  Province pile stops being the VP ceiling.
- Track the score, the Province count and how close any piles are to empty,
  every turn.
- **Penultimate Province Rule**: don't buy the second-to-last Province if
  that lets your opponent win by buying the last one. A Duchy can be better.
  Exceptions:
  - If your deck has less future potential than theirs, take the Province
    now.
  - If you need both of the last two Provinces anyway, go for them.
  - In a tied game with one Buy each, player two buying the second-to-last
    Province can force a win, since taking the last one only ties and ties
    go to fewer turns.
- **Check the opponent's whole next turn**, not just the Province pile:
  unused extra turns (Seize the Day), stored Coffers, Villagers or Favors,
  cards on mats, and how many +Buys and Golds they have left this shuffle.
- Three-pile endings are a real threat with +Buy and cheap piles. Count how
  many gains each player can make to empty the piles. In mirrors, the
  number of gains often matters more than money.
- Colony games last longer and favor engines and Platinum economies.

## Risk and luck

- When ahead, cut variance: add a spare village, stop drawing to avoid a
  bad reshuffle, keep spare draw.
- When behind, take higher-variance lines. Late in the game, play for the
  luck you need: if you need both of the last Provinces, go for them.
- Player two starts at a disadvantage and can justify a little more risk.
- Judge decisions by their expected result, not their outcome. A good
  result doesn't prove a choice right.

## Multiplayer (3–6 players)

- Each opponent's attacks hit you, so defenses like Moat get better as the
  player count rises.
- Your own junker adds less, since the Curses split more evenly. One-card
  trashers can't keep up with several junkers.
- Key piles get contested, so value boards with substitutes for them. A thin
  deck adapts more easily than a bloated one.
- There's less time to build and less control over the ending: ask when you
  must green, given what the others are doing.
- Three-pile endings (four with 5–6 players) come sooner than you'd expect.
