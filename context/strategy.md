# Dominion Strategy Basics

Principles that strong players broadly agree on. Unless noted, they assume
2-player games, which is how most competitive play happens. Every kingdom
is different: treat these as defaults to check, not laws.

## Deck composition

Dominion is a game about what is in your deck. You never choose your hand:
each turn you draw five cards from a deck you built. So the decisions that
last are what goes into the deck and what comes out of it. Every gain,
trash and Victory card changes the deck's composition, and the composition
decides what every later hand can be.

- **A card is good if a deck with it produces better turns than a deck
  without it.** No card is good in isolation. A Gold lifts a deck of Coppers
  and Estates, and can stop a turn in a deck that draws itself. Judge every
  gain, Treasure and Victory cards included, by what it does to the hands
  you will draw.
- **Every card dilutes the others.** Adding a card makes each other card
  turn up less often. Junk (Coppers, Estates, Curses, Ruins) is pure
  dilution. Victory cards are junk you choose to take, which is why
  greening has a cost.
- **Proportions matter more than counts.** One copy of a key card is in a
  given 5-card hand one turn in three in a 15-card deck, and one turn in
  six in a 30-card deck.
- **Tempo compounds.** A typical 2-player game lasts about 15–20 turns per
  player, and strong decks end it sooner. A card gained early is drawn many
  more times than one gained late, so early gains should improve the deck
  and late gains mostly need to be points.

## Payload and deck control

Every card in a deck does one of two jobs: it is worth playing, or it helps
you play the cards that are. This split, from Adam Horton's
[Payload and Deck Control](https://adamhorton.com/flog/dominion-payload-and-control/),
is the main tool for judging what a card does for a deck.

- **Payload** is what a turn produces once you have played your cards: $
  to spend, Buys to spend it with, cards gained, VP tokens, and harm to the
  opponent. In a plain money deck the payload is its Treasure (see
  "Payload").
- **Deck control** lets you play your other cards: draw, villages,
  thinning, sifting and top-of-deck control (see "Deck control"). Junking
  the opponent attacks *their* deck control.
- **Dead cards** do neither: Victory cards and Curses once they're in your
  deck, or a trasher you no longer need.
- **Hybrids** (e.g. Grand Market, Torturer) do both. They're usually very
  strong, and the right move is often to add them as fast as possible.

The two limit each other. Payload is worth only as many plays as deck
control gets it per turn, and deck control is worth only the payload it
reaches. Name the job of each card before you add it, and ask which of the
two the deck is short of.

## Reliability

Because every hand is drawn at random, a deck has a spread of possible
turns, not one turn. How often it produces the turn you need matters as
much as how big that turn is.

- **Prices are thresholds.** $9 buys what $8 does, and $7 buys what $6
  does. $ above a price is mostly wasted and $ below it loses the gain, so
  a deck that hits $8 on 70% of turns beats one that alternates between $11
  and $4.
- **A plan is worth its typical turn, not its best one.** A deck built to
  draw itself is only as good as how often it does. A stalled turn of
  villages and draw is often worse than a money turn, because those cards
  produce nothing on their own. A plan that completes on half its turns
  usually loses to plain money (see "The Big Money baseline").
- **What makes a deck reliable**: thinning, so draw finds draw; one or two
  cards of spare draw beyond exactly enough; an Action for every terminal
  the turn plays; non-terminal draw, which can't collide; Actions and cards
  that arrive at the start of the turn (Durations); top of deck control
  that puts the key card in hand; and enough copies of any card the turn
  can't do without.
- **What makes it unreliable**: a single copy of a key card; terminal
  draw with too few Actions; junk, which dilutes draw; handsize attacks,
  which cut the hand a turn starts from; and draw that leaves the
  reshuffle to chance late in the turn.
- **Money's strength is reliability.** It never stalls, it only
  fluctuates, which is why it is the baseline. A plan that beats money on
  its good turns but not on average loses to it.
- **Reliability decides when to stop building.** Add a spare village or
  draw card before more payload whenever the deck still stalls, and
  especially when ahead (see "Risk and luck").

## Deck control

Deck control is how much of your deck you can play in a turn, and how much
say you have in which cards. Without it, a turn is a random five cards and
the deck produces its average hand. With enough of it, a deck draws itself
every turn and produces the sum of all its cards, so each payload card adds
directly, which is why such decks keep growing. Junk, greening and the
opponent's attacks erode deck control, so it has to be maintained.

### Terminal slots and collision

A *terminal* is an Action that gives no +Action. A turn starts with one
Action, so without villages each turn has one **terminal slot**: room to
play one terminal.

- **Collision**: draw two terminals together without a village and one of
  them is dead. Two terminal openers land in the same hand on turn 3 or 4
  about 30% of the time.
- **Over-terminaled**: a deck holding more terminals than its turns have
  slots. Without villages, keep roughly one terminal per 8–10 cards. Past
  that, a new terminal collides often enough that Treasure or a
  non-terminal is usually the better gain.
- **Slots are a budget.** Every terminal you add competes for the same
  slots, so a terminal is worth only what it adds over the best other use
  of the slot. A $2 terminal can cost you a turn's play of your draw card
  or your attack.
- **Villages add slots, and non-terminals use none.** Treasures and
  *cantrips* (cards that give at least +1 Card and +1 Action, so they
  replace themselves) never collide. A cantrip's bonus (+$1, +Buy,
  trashing, an attack) is close to free: it costs a gain and a place in
  the deck, but no slot and no space in the hand. Its +1 Card is worth
  nothing once you draw your whole deck.

### Draw and villages

Further reading: Adam Horton on
[draw](https://adamhorton.com/flog/dominion-draw/) and
[villages](https://adamhorton.com/flog/dominion-villages/).

- **Draw** is anything that increases your hand size. Most of it is
  +Cards on an Action, but Durations, Night cards and Treasures can draw
  too. A cantrip only replaces itself, so it isn't draw.
- **Non-terminal draw** (Laboratory: +2 Cards +1 Action) grows your hand
  and keeps your Action, so any number of copies can be played in a turn.
- **Terminal draw** (Smithy: +3 Cards) grows your hand more per card but
  uses your Action, so playing more than one needs Actions from elsewhere
  (see "Terminal slots and collision").
- **A village** is anything that lets you play more than one terminal in a
  turn. That includes Throne Room and King's Court. Cards that at best
  replace the Action they use, like Conspirator, Ruined Village or Vassal,
  are not villages.
- **A village doesn't have to be an Action card that says +2 Actions.** A
  spare Action can arrive at the start of your next turn from a Duration or
  Night card, or come from Villagers. A Night card costs no Action to play,
  so one that leaves +1 Card and +1 Action for next turn (Ghost Town) nets
  the same as a Village, and it can't be drawn dead after your Actions run
  out. Its Action comes a turn late, so it doesn't rescue the hand it is
  drawn in. Find villages by reading every card's whole text for Actions
  and Villagers, not by its name or type line.
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
  trasher, the payoff) in your hand every turn, a deck that looks
  inconsistent may be reliable.

If nothing on the board increases hand size, no deck on it will play much
more than five cards a turn. Villages matter only in proportion to
terminals: non-terminal draw needs none.

### Thinning: addition by subtraction

*Thinning* removes cards from the deck you draw from. It looks like a loss:
a trashing turn often buys nothing, and the deck ends up with fewer cards
and less total money. But a hand is five cards drawn from the deck, so what
matters is the average card, not the total. Removing any card worse than
the average makes every later hand better.

- **Each good card turns up more often.** One key card in a 12-card deck
  is in a given hand 5 times in 12. Trash 3 Estates and 2 Coppers and it
  is in 5 hands in 7.
- **Copper is junk once the deck is better than Copper.** In the starting
  deck the average card is worth $0.70, so trashing Estates alone lifts the
  average hand from $3.50 to $5. Once your average card is worth more than
  $1, every Copper drags hands down too.
- **Every later gain is worth more.** In a 10-card deck a new Gold is drawn
  about every other turn; in a 25-card deck about one turn in five. A thin
  deck gets more plays out of everything it adds, and that compounds.
- **Draw finds draw.** In a thin deck a few draw cards play the whole
  deck, so thinning is what lets a deck reach "draws itself every turn".
- **It's one of the strongest effects in the game.** Chapel costs $2 and
  does nothing but trash, and it rates in the top tier (see
  `context/card-power.md`). Don't pass up strong trashing because a turn
  spent trashing looks empty.

In practice:

- **Trashing** (Chapel, Sentry, Steward, …) is the usual way. With Chapel,
  on turn 3 or 4 trash your whole hand, even if it's only Coppers. The
  exception is a hand holding your other opener.
- After the first big trashing turn, keep enough money to buy what you
  need. Don't thin so hard you lose your economy. If you're drawing
  everything but short on money, you trashed Coppers too fast.
- A trasher that goes dead late in the game has usually already paid for
  itself.
- Thinning matters less where the deck wants many cards: Gardens and other
  card-count VP, and slogs where junk arrives faster than you can remove
  it.
- **Thinning without a trasher.** Anything that takes a card out of your
  deck for good thins it: Exile, a mat, or a card that turns one card into
  another (Remodel; Displace Exiles a card and gains one costing up to $2
  more). A swap removes one card per play, which is slow, but each play
  also adds a part: a Copper becomes a $2 piece and an Estate a $3 or $4
  one. Exiled Victory cards still score, so Exiling Estates costs no
  points. Before calling a board "no trashing", check every card for one of
  these.

## Payload

Every deck has payload; in a plain money deck it is the Treasure. Payload
counts *relative* to the opponent, so attacks, denying a key pile, and the
ability to end (or threaten to end) the game on piles while ahead are
payload too. Early in the game, gainers such as Workshop are payload that
builds the deck rather than scoring.

### +Buy turns a big turn into points

You score by gaining Victory cards, and each Buy gains one card. So
without +Buy, gainers or VP tokens, a turn's payload is capped at one
card, whatever $ it makes: $16 buys one Province, the same as $8. A deck
that draws itself every turn then scores no faster than a money deck that
hits $8, and has lost the turns it spent building.

With +Buy, each extra Buy raises the ceiling by one card: $16 and 2 Buys is
two Provinces, $13 and 2 Buys is a Province and a Duchy. That is what lets
an engine catch up with and pass a money deck that started scoring earlier.
So the number of Buys a built turn can reach often decides whether an
engine is worth building at all. +Buy also speeds the build itself (a
village and a draw card in one turn, or several cheap parts), and it is
what makes a three-pile ending possible.

Other ways past one card per turn: gainers that gain without a Buy, Events
and Projects bought with spare Buys, VP tokens, and Victory cards that
gain or come with other cards. Count them alongside +Buy.

### Payload depends on the deck

Whether a payload card is good depends on whether the deck around it can
play it many times per turn.

- **Flat payload** pays about the same every time it is played: Gold, a
  terminal that gives $2, a cantrip that gives $1. It is as useful in a
  money deck as in an engine, and its value doesn't grow with copies.
- **Stacking payload** pays off only when several copies, or several
  plays, land in one turn: cost reduction, +Buy terminals with a small
  bonus, multipliers, effects that count cards in play. Bridge is the usual
  example. In a money deck it is a weak terminal: $1, a +Buy you rarely
  use, and $1 off a single purchase. In an engine that plays four or five
  Bridges, each one cuts every purchase that turn by $1 and adds a Buy,
  which can take several Provinces at once.

So judge payload cards after deciding how much of the deck this board lets
you play. A card that looks like the board's best payload may be close to
useless in the deck the board actually wants, and the reverse.

- **Before the game**, work out the best payload this kingdom allows, given
  its deck control. Ten Bridges is no payload without villages to play them.
  If the ceiling is about one Province per turn, a complex deck rarely beats
  Big Money.
- **If deck control is weak** (little draw or trashing), you won't
  reliably play your full payload, so build less.
- **Once your deck is under control**, balance adding payload against still
  drawing most or all of your deck each turn.

### Gold, Treasure gainers and Coffers

- **Gold in an engine** is a card that doesn't draw, so it can stop your
  turn. Add it late, once draw can absorb it, and prefer gaining it free
  over buying it.
- **Treasure gainers**: time them for when the deck can draw the gained
  Treasure that turn. In money decks they free your buys for other things.
- **Coffers**: spend them early, because early gains compound. In the
  midgame keep one or two to hit key prices. Late, hoard them to guarantee
  $8 or to threaten a turn with several Provinces (with +Buy). A second
  source of Coffers adds less than the first.

## The Big Money baseline

"Big Money" means buying only Treasures and Victory cards. It's the
benchmark every plan should be measured against.

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
  Plan enough copies to play the attack on most turns, within your
  terminal slots (see "Terminal slots and collision"), rather than one copy
  that is played about one turn in three.
  Hypothesis, from a rough simulation of one board without villages
  against a money bot: Militia with Smithy beat Smithy-BM, and two Militias
  beat both by a wide margin. The size of the gap is unconfirmed.
- **Big Money doesn't choke.** Optimized plain Big Money keeps taking about
  one Province every other turn for as long as the game lasts. On its own
  it empties all 8 Provinces in roughly 21–23 turns
  ([ragingduckd, "The Myth of Big Money Choking"](http://forum.dominionstrategy.com/index.php?topic=9512.0)).
  Don't assume a money opponent stalls once they green. Use these numbers as
  the race clock any slower plan has to beat.
- Any plan that can't beat a competent BM+X in this kingdom is a mistake.

## Archetypes

Each archetype is a different answer to how much deck control the board
supports and what payload it rewards. Engines are usually the strongest,
so look for one first.

- **Engine**: enough deck control (draw, thinning, and Actions for its
  terminals) to play most of the deck, plus payload that scales past one
  card per turn. Aim to draw most of your deck each turn and gain several
  cards, often more than one Province, per turn. Engines start slower but
  usually win (see "Engines" below).
- **Money / BM+X**: few Actions, lots of Treasure, greens early. Strongest
  when the kingdom lacks draw or thinning, or when attacks punish slow
  decks.
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
- **Combos**: a plan built around a specific interaction (see "Interactions
  to look for"). Always look for them, but check that they beat the plain
  options.

## Engines

Engines are usually the strongest decks a board allows, and most boards
allow one. A deck that plays most of itself each turn gets the full value
of every card in it, keeps growing as it adds payload, and can take
several Provinces a turn where a money deck takes one. So start every board
by looking for the engine, and settle for another archetype only when the
board can't support one or a faster plan beats it.

What an engine needs follows from payload and deck control, not from a
fixed list of cards:

- **Draw that reaches most of the deck** (see "Draw and villages").
- **An Action for every terminal the built turn plays, and no more.**
  Villages exist to give terminals slots. Payload that gives +Actions
  (Festival) supplies its own. A deck whose draw and payload are all
  non-terminal needs no village at all: Laboratories for draw, Treasure for
  money and a non-terminal +Buy (a cantrip, a Treasure or an Event) are an
  engine.
- **Payload that scales past one card per turn**: +Buy from any source,
  gainers, VP tokens or a repeatable attack.
- **Thinning** of any kind (see "Thinning: addition by subtraction"), or
  draw strong enough to beat the junk. Strong engines can overcome Curses.

Any of these can come from a card that doesn't look like it, so read the
whole board for each before deciding one is missing. None of them has a
price limit: some engines are built entirely from $5 cards.

### Judging one

Engines are harder to estimate than money, and that is the usual way they
get underrated. Write the build out turn by turn: the opening, when the
deck first draws itself, how often it does after that, and what a built
turn produces. Compare that with the Big Money clock and the board's other
plans. An engine that looks slow or awkward (expensive parts, a
conditional village, no village at all) is not evidence either way.

Things that weaken an engine, to weigh rather than to rule it out:

- The only "draw" is cantrips. A good-stuff deck is usually better (see
  Archetypes).
- Draw with nothing to pay its Actions, or villages with nothing to draw.
- No +Buy, gaining or alternative payload, so a built turn still takes
  one Province.
- The opponent can three-pile or rush before the engine comes online.
- A key piece sits in one pile the opponent also wants.

### How to build one

- Open with trashing and economy, so you can afford the parts.
- **Build fast.** Gaining one card per turn is too slow. +Buy and
  Workshop-style gainers roughly double the build rate, and Remodel-style
  gainers turn Estates into engine parts. Prefer a $5 engine piece over
  Gold.
- Count terminals and Actions together: each terminal you add needs an
  Action on the turns it is drawn. Get draw before payload, unless the
  payload is a strong attack.
- **Actions and cards at the start of the turn are worth the most**,
  because that's when turns stall. Duration villages and duration draw
  (Fishing Village, Wharf) give them before you draw anything. Spread them
  across turns rather than bunching them.
- Aim for one or two cards of spare draw beyond exactly enough. That makes
  the deck consistent, which matters most against attacks and when you're
  ahead. Spare draw can be spent by gaining a card mid-turn and drawing it.
- Stop adding Treasure once the deck draws itself, unless Treasure is the
  payload, and add payload once it draws itself reliably.
- Don't overbuild past the payload ceiling. But when unsure whether to
  green, one more building turn usually costs less than it seems.

### Building for one huge turn

Some decks save resources for a single game-winning turn: cards on mats
(Native Village), Reserve cards, banked Coffers, Villagers or Favors.

- Saving up means you don't use those resources while building, so playing
  your payload every turn usually builds faster.
- It's worth it mainly with an explosive finisher such as cost reduction
  (Bridge, Highway, Bridge Troll) stacked many times.
- Attacks of every kind hurt a saving deck badly. Check the opponent's
  attacks before committing.
- Start the big turn only when you can see it through, since a turn that
  fizzles partway can lose on the spot. If it can't end the game, make sure
  the opponent's best reply can't win.

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

An interaction is only worth building around if the result beats the plain
options, starting with Big Money + X. Known game-deciding combos are listed
in `context/combos.md`.

## Openings

Sources: Adam Horton's
[Discipline in the Opening](https://adamhorton.com/flog/dominion-discipline-in-the-opening/)
and general community consensus.

Your two opening buys are a sixth of a 12-card deck, and each is drawn on
turn 3 or 4 five times in six. No later gain shapes as many hands.

- With the standard starting deck, turns 1–2 give $7 between them, split
  4/3 or 5/2 (5/2 is about 1 in 6). Heirlooms and Shelters change the
  starting deck, and some Heirlooms change the money: Cursed Gold makes the
  total $9. Work the splits out from the actual deck.
- **What the opening is for**, in order: trashing or a junking attack
  first, then gainers. Draw and payload rarely drive the opening. Buying
  Silver to reach $5 for a key $5 trasher or junker counts as working
  toward that goal. Opening a plain village is almost never right.
- **A turn 1 buy that acts before the shuffle changes turn 2.** A card
  gained to your hand or onto your deck, a when-gain effect, or a Night
  card played the turn it is bought makes the turn 2 hand something other
  than the leftover five cards. Work that hand out before choosing, and
  the hands after it. Example: on a $3 turn 1, Ghost Town is gained to
  hand and played that Night. Turn 2 is then the known $4 hand plus one
  card from the reshuffled turn 1 hand (3 Coppers, 2 Estates), so it has
  $5 three times in five, a turn or two before a Silver opening can reach
  it. The cost is turn 3, which draws the other four of those cards plus
  one.
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

## Attacks and defense

Attacks work on the opponent's deck. Junkers worsen its composition,
handsize attacks cut how much of it they play, and trashing attacks take
cards out of it.

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
  every turn. The first copy of an attack on the opponent's economy is
  high priority, because it can stop them reaching the price of their own
  copy.
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

Greening trades deck quality for points: every Victory card is a dead card
you draw for the rest of the game.

- Start buying Victory cards when the remaining turns are few enough that
  the points beat the economy you give up. The faster your deck can still
  improve, the later you green:
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
