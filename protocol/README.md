# dominion/agent-view@2

One interface for anything that plays Dominion: a language model over MCP, a program, a
person at a terminal. A **producer** (a game host such as `dominion-engine`'s `dominion`
server, or a client reading a live game) shows each seat a **view** of the game and the
**decision** it must make; the seat's **agent** answers with option indices.

[`agent-view.schema.json`](agent-view.schema.json) (JSON Schema, draft 2020-12) is
canonical. Its root validates a view; `$defs/decision`, `$defs/answer` and
`$defs/glossaryEntry` validate those on their own. This file explains the fields and the
rules the schema can't express.

## The view

A view is a JSON snapshot of the game **as one seat may know it**. It never contains
information that seat could not have, and (where the producer can) it contains everything
the seat could remember: a player who watched every move and forgot nothing.

| Field | Meaning |
| --- | --- |
| `schema` | Always `"dominion/agent-view@2"`. |
| `game` | `id`, `running`, `kingdom` (Kingdom pile names), `landscapes`, and once over `result`: each player's `vp`, `rank` (ties share a rank) and `turns`, plus `reason`. |
| `seat`, `spectating` | Your seat index (from 0, in turn order), or `null` and `true` for a spectator. |
| `turn` | `number` (the active player's turn count), `player`, `activePlayer` (name), `yourTurn`, `phase` (`start`, `action`, `buy`, `night`, `cleanup`, `end` or `null` if unknown), `actions`, `buys`, `coins`, `potions`, the active player's `debt`, `controller` (who decides for this turn when it isn't its player: Possession) and `extra` (the card that granted an extra turn). |
| `you`, `opponents` | Player views (below). `opponents` are in turn order starting to your left. |
| `supply`, `nonSupply` | Piles: `card` (name, or the randomizer of a mixed pile), `count`, `top` (the visible top card when it differs from `card`), `cost` of the top card now, `types`, `kingdom`, `hidden` (face down: no card visible), `tokens` (`embargo`, `tradeRoute`, `vp`, `debt`, and players' Adventures tokens), `traits`. |
| `landscapes` | Events, Landmarks, Projects, Ways, Allies, Traits, Prophecies: `kind`, `cost`, `vp` on a Landmark, `suns` left on a Prophecy and whether it is `active`, `owners` (players with a cube on a Project). |
| `trash` | A zone (below). |
| `uncertain` | Groups of cards spread over more than one player's zones (or a pile or the trash); see Knowledge. |
| `boons`, `hexes` | `count` left to draw and the face-up `discard`. |
| `artifacts` | Each Artifact and its `holder`. |
| `lasting` | Effects that outlive their play: `card`, `owner`, `until` (`end-of-turn`, `start-of-turn` of `untilPlayer`, or `removed`), the visible `cards` it holds or keeps in play, and a `count` it keeps. |
| `extraTurns` | Extra turns waiting, next first. |
| `notes` | Public state a card keeps that the fields above don't cover (Young Witch's Bane, Obelisk's pile, VP on Landmarks, ...): `source`, and as applicable `player`, `pile`, `card`, `count`. |
| `counters` | Anything else, by name (a fallback for producers). |
| `decision` | Your open decision, or `null`. |
| `sinceLastDecision` | Log entries since you last answered: `{seq, type, player?, card?, text}`. `seq` is the entry's position in the game log; `type` is kebab-case (`turn-start`, `played`, `bought`, `gained`, `trashed`, `discarded`, `top-decked`, `revealed`, `revealed-hand`, `drew`, `shuffled`, `received`, `moved`, ...); `text` is a readable line. |

### Player views

`index`, `name`, `vp`, and the zones `hand`, `inPlay`, `deck` (with `orderKnown: false`)
and `discard`. `otherZones` holds the non-empty others by name: `setAside`, and mats
(`tavern`, `island`, `nativeVillage`, `exile`). Also `owned`, `uncertain`, `unlocated`
(below), `tokens` (`coffers`, `villagers`, `favors`, `debt`, `vpTokens`, `pirateShip`,
`minusCard`, `minusCoin`, `journeyFaceUp`; zero and false values are left out),
`adventureTokens` (token → the pile it is on, or `null`), `projects`, `states`, `boons`
kept until Clean-up, `artifacts` held, `turnsTaken`, and `counters`.

### Knowledge

Every zone is `{count, known, unknown}`: `count` cards, of which `known` (by name, with
how many) are identified; `unknown` are not. Deck order is never shown.

Knowledge has **perfect recall**. A card you have seen stays known while you can follow
it: a card revealed and put on an opponent's deck is known in their hand once they draw
it. You lose track when you can't tell which card moved: a shuffle; cards put back in an
order someone chose without showing you; a card leaving a hand you can't see, or the
middle of a deck or discard pile. Then the cards involved form a group whose combined
identities you still know, spread over zones:

- `uncertain` (per player, for groups within that player's zones): `{zones, count,
  candidates, outside}`: these zones together hold `count` cards that are exactly
  `candidates` (`outside` of the candidates are elsewhere; 0 when the producer knows the
  group exactly). Those cards are counted as `unknown` in each zone.
- `view.uncertain` (top level): the same for groups spanning several players' zones,
  piles or the trash, with each zone as `{player?, pile?, zone, count}`.
- `owned`: the identities you know of a player's cards wherever they are among their
  zones (`known`), and how many you don't (`unknown`).
- `unlocated`: known owned cards whose zone a producer doesn't track (an engine always
  tracks zones, so it leaves this out).

A group whose identities are not known at all (a face-down pile, the Ruins pile) only
adds to `unknown`.

What counts as seen follows the official rules: cards in play, in the trash, on public
mats and set aside face up; the top of each discard pile and of each face-up pile; your
own hand and face-down cards; cards revealed or looked at (by you); cards offered to you in
a decision; cards gained, trashed, or discarded by an effect (discarding is public). Cards
discarded in Clean-up are not revealed, except the one left on top. Under Possession the
possessing player sees what the possessed player sees.

## Decisions

```json
{
  "id": "d17", "player": 1, "kind": "cards", "purpose": "discard", "source": "Militia",
  "prompt": "Militia: choose 2 card(s) to discard",
  "ordered": false, "nameAny": false, "min": 2, "max": 2,
  "groups": [{"group": 0, "kind": "cards", "prompt": "...", "min": 2, "max": 2}],
  "options": [
    {"index": 0, "group": 0, "action": "select", "label": "Copper", "card": "Copper", "zone": "hand"},
    {"index": 1, "group": 0, "action": "select", "label": "Estate", "card": "Estate", "zone": "hand"}
  ]
}
```

- `id` is opaque. Each new decision gets a new id; an answer must name the open one.
- `kind`: `turn` (a phase's main choice), `cards`, `pile`, `choose` (among labelled
  options), `name`, `number`. Other producers may use other kebab-case kinds.
- `purpose` says why it is asked: `turn`, `discard`, `trash`, `gain`, `top-deck`,
  `move`, `play`, `set-aside`, `reveal`, `reaction`, `trigger` (order or decline
  triggered abilities), `mode` (a card's "choose one" options), `either` (other
  alternatives), `exile`, `return`, `pass`, `overpay`, `name`, or `other` when the
  producer can't tell.
- `source` is the card asking; `phase` is set on `turn` decisions.
- `options` are flat, indexed from 0, each in a `group` with its own `min`/`max`. Each
  option has an `action`, always filled: `play`, `buy` (a card), `buy-landscape` (an
  Event or Project), `spend-coffers`, `spend-villager`, `pay-debt`, `end-phase`, `select`
  (a card, or a card-shaped choice), `pile`, `decline`, `yes`, `no`, `mode` (`value` is
  the mode's position on the card), `player` (`player`), `trigger` (`card` is the
  ability's source), `name`, `number` (`value`). Options carry `card` where one applies,
  `zone` (where a card to play or select is: `hand`, `deck`, `discard`, `inPlay`, a mat,
  ...), and `cost` for things to buy.
- `min`/`max` at the top level repeat the bounds when there is one group.

## Answers

```json
{"decision": "d17", "indices": [0, 1]}
{"decision": "d18", "indices": [2], "expect": ["Buy Silver"]}
{"decision": "d23", "name": "Gold"}
```

- `indices`: options to choose, within each group's `min`..`max`, no repeats. `[]` is
  valid when `min` is 0 ("choose nothing"). Options from different groups can be combined
  only when the producer says so in the group prompts.
- When `ordered` is true, the order of `indices` is the resulting order, **top first**
  (the first index ends on top of the deck).
- `expect` says what the answerer takes each chosen option to be, one entry per index
  in the same order: the option's `label` (with or without a trailing parenthesis; case,
  spaces and punctuation are ignored), or its `card`. The label says more: in a Buy phase
  `Silver` is both `Play Silver` and `Buy Silver`. The producer rejects the answer
  if an option is something else. Option numbers change from one decision to the next
  (after a buy, the piles no longer affordable are gone and the rest move up), so an
  index read from an earlier decision can point at another option; `expect` turns that
  into a rejection. Optional; ignored with `name`.
- When `nameAny` is true, the answer may give `name`, any card's name (case, spaces and
  punctuation are ignored), instead of indices; the `name` options list the cards in this
  game for convenience.
- The producer validates every answer. A rejected answer changes nothing and comes with a
  reason, e.g. `option 7 does not exist (decision has 5 options)`, `choose 2 option(s),
  got 1`, `decision d16 is not open; the open decision is d17`, `P2 is not deciding now`,
  `option 2 is "Buy Curse ($0)", not "Buy Silver" (that is option 1)`.

## Glossary

`{name, types, set, cost, text}` per card, with official text (lines separated by `\n`,
`---` for the dividing line). Producers offer it on demand (the `cards` tool).

## Text rendering

A compact rendering of the same view for language models, derived only from the JSON
(`examples/view.json` and `examples/view.txt` are a full pair):

```
GAME g1: turn 3, Ada's turn, action phase, actions 0, buys 1, coins 2
YOU: Bo (3 VP)
  hand 5 (3 Copper, Estate, Militia)
  deck 7 (4 Copper, 2 Estate, Silver)
  discard 0
  owns 7 Copper, 3 Estate, Militia, Silver
OPPONENT: Ada (3 VP)
  hand 4 (4 unknown)
  in play 1 (Militia)
  deck 7 (7 unknown)
  discard 0
  deck+hand hold 11 of: 7 Copper, 3 Estate, Silver
  owns 7 Copper, 3 Estate, Militia, Silver
SUPPLY Copper $0 x46, Silver $3 x38, ..., Militia $4 x8, ...
TRASH empty
LOG
  Ada starts turn 3
  Ada plays Militia
DECISION d20: Militia: choose 2 card(s) to discard
  choose 2
    0: Copper
    1: Copper
    2: Militia
    3: Copper
    4: Estate
```

Lines: `GAME` (id, turn, whose turn, extra turn and controller, phase, actions, buys,
coins, potions and debt when non-zero), `RESULT` once over, `YOU` and each `OPPONENT`
(zones as `count (known; N unknown)`, other zones, uncertain groups as `zones hold N of:
candidates`, `owns`, then tokens, projects, states, Boons, Artifacts and counters on one
line), `SUPPLY` and `NON-SUPPLY` (`name (top X) cost xcount [tokens, traits]`),
`LANDSCAPES`, `TRASH`, `UNCERTAIN` (cross-player groups), `BOONS`, `HEXES`,
`ARTIFACTS`, `LASTING`, `EXTRA TURNS`, `NOTES`, `LOG`, and the `DECISION` with its
bounds (`order matters` for ordered decisions, `or answer with any card's name` when
`nameAny`) and options as `index: label`, with `(from zone)` for cards not in your hand.

## Producers

- **dominion-engine** (`crates/dominion-agent`) produces @2 from local games, with full
  knowledge tracking, and its `dominion` binary serves it over MCP.
- **dominion-navigator** produces agent-view@1 from live games on dominion.games; @2 is
  designed so it can produce it too: it leaves out what it can't read (the optional
  fields), uses `purpose: "other"` where it can't tell, `kind` from the client's question
  types, and `unlocated` for cards its tracker can't place.

Every producer serves the MCP tools specified in [`tools.md`](tools.md) (dominion/play@1).

Changes to the protocol go through the schema here first; producers vendor it.
