# dominion/play@1: the MCP tools

The tools a producer serves so that an agent can play one seat of a game over
[MCP](https://modelcontextprotocol.io). The same tool names, arguments and results work on
every producer, so an agent (and `skills/play-game`) doesn't need to know which one it is
talking to. Views and decisions are [agent-view@2](README.md).

Register the server as `dominion`. A producer may add tools of its own. It must not give
a tool from this list a different meaning.

## Tools

| Tool | Arguments | Does |
| --- | --- | --- |
| `state` | `token?` | Whether there is a game, and if there is, the full view plus card text. |
| `step` | `decision`, `indices?`, `name?`, `timeout_s?`, `token?` | Answers the open decision, waits for your next one, returns what changed. |
| `wait` | `timeout_s?`, `token?` | Waits for your next decision without answering, returns what changed. |
| `new_game` | `kingdom?`, `landscapes?`, `bots?`, `players?` and producer extras | Starts a game, seats you, returns the full view. |
| `cards` | `names` | Card text, types and current cost (the [glossary](README.md#glossary)). |
| `log` | `after?`, `limit?` | Rereads the game log, oldest first, with each entry's `seq`. |

Optional tools, for producers that have the concept:

| Tool | Arguments | Does |
| --- | --- | --- |
| `join_game` | `game`, `token` | Binds this MCP session to a seat, so later calls can leave out `token`. |
| `list_games` | none | Games on the server, without tokens. |
| `resign` | `token?` | Resigns your seat's game. |

Debugging tools (such as `inspect`) may read hidden state. Name them so they are clearly
not for play, and say so in their description. An agent playing a game must not call them.

## Arguments

- `token`: a seat's secret, for producers that host several seats. A producer with one
  seat per server (one logged-in account) ignores it. After `new_game` or `join_game`,
  calls in the same MCP session may leave it out.
- `decision`, `indices`, `name`: the [answer](README.md#answers), field for field.
  `indices: []` chooses nothing. `name` only where the decision has `nameAny`.
- `timeout_s`: seconds to wait for your next decision. Default 60. A producer may cap it,
  but must accept at least 300.
- `new_game`:
  - `kingdom`, `landscapes`: names the game must use. The producer fills the rest at
    random.
  - `bots`: how many bot opponents (default 1 where the producer has bots).
  - `players`: seats in all (default 2). Seats that are neither you nor a bot are left
    for other agents, and the result gives their tokens.
  - A producer refuses settings it can't honour, and says why. It never silently drops
    one. Producer extras (`seed`, `sets`, `turn_limit`, ...) are listed in its tool
    description.
- `log`: `after` is a `seq`. `limit` keeps the newest entries (default 50).

Unknown arguments are refused.

## Results

Every result has text content for the model. Results that carry a view also carry it as
structured content: `{view, glossary?}`, the full agent-view@2 JSON, even when the text
is a delta.

**Full text** (`state`, `new_game`, and `step`/`wait` the first time this session sees
a game): the [text rendering](README.md#text-rendering), preceded by one status line
and followed by `CARDS`.

**Delta text** (`step`, `wait`): the rendering, cut down to what changed since the view
this MCP session was last shown.

- The `GAME` line, always.
- `LOG` with only the entries not shown before, by `seq`. None are skipped. If there are
  too many, the oldest are cut and a line says to call `log`.
- Any other line or pile whose text changed. Changed piles go on one line, as
  `SUPPLY (changed) Village $3 x9, Province $8 x6`. A pile or line that went away is
  reported as gone.
- The `DECISION` in full.

**Status line**: one line before a full view saying where things stand, e.g.
`STATUS game g4, seat 0 of 2, opponents: 1 bot`, or `STATUS no game` with what to call.

**`CARDS`**: the glossary entry of each card in the view that this session hasn't been
shown yet, one per line, leaving out the basic Treasures, Victory cards and Curse. So
the text of every card arrives once, as it first appears.

**Forced decisions**: a decision with only one legal answer is answered on your behalf
on the way to the next real one, in `step`, `wait` and `new_game`. The log shows what
happened. A producer may also report each one as a line such as
`AUTO d31: Cellar: discard any number of cards -> (nothing)`.

**Endings.** A result whose wait ends without a decision ends with one of these lines:

- `WAITING: no decision for you yet; call wait.` (the timeout passed)
- `GAME OVER` and the `RESULT` line.
- `SPECTATING: nothing to answer.`

## Errors

A failed call returns an MCP error result whose text says why and what to do next. A
rejected `step` changes nothing. It gives the reason, as under
[Answers](README.md#answers), then the open decision in full, so the caller can answer
again without another call.

Errors with a fixed meaning start with a code:

- `NO_GAME`: no game is running. Call `new_game`.
- `NOT_SEATED`: this session has no seat. Pass `token`, or call `join_game`.
- `REJECTED`: the answer was illegal or stale.
- `REFUSED`: the producer won't act, e.g. a table with human opponents, which needs the
  operator's explicit permission.
