# Card Power Levels

How strong cards are relative to each other, and where that knowledge comes
from. Ratings describe a card's strength in an average kingdom. A specific
kingdom always matters more: a low-rated card can be the key to a board, and
a top card can be useless in it.

Use ratings as a check, not as a starting point. Read the card and work out
what it does on the board first. Then compare your view with the rating, and
explain any large gap. A low rating is never a reason to skip a card.

## Primary source: Dominion Card Glicko

A live community rating system by the Dominion Strategy community. Raters
choose the stronger card in random pairs, and the votes feed a Glicko-style
rating. Ratings are on one scale across costs, and landscapes are rated
separately. The ratings themselves are in `context/card-ratings.md`.

- Scale for kingdom cards: the median is about 0, the top 10% is above 3.3
  and the bottom 10% is below −3. The extremes are about +6.9 and −7.8.
- Ratings carry about ±0.7 of uncertainty, so treat cards within about one
  point of each other as tied.
- Coverage: kingdom cards and landscapes through Rising Sun. Arcana is not
  rated yet. First-edition cards are listed separately, with rough ratings.
- Look ratings up there rather than relying on memory.

## Secondary sources

- **Woodcutter analysis** (markus): win-rate statistics from hundreds of
  thousands of logged games between strong players on Dominion Online,
  2018 to post-Allies. It's empirical, but confounded by who buys what and
  when. <https://docs.google.com/spreadsheets/d/1M2L7hcY3sbA33OwuZhgPYJWVlMFgJYBdK8cnkbJHmbo>
- **Qvist rankings** (2011–2018): yearly community polls ranking cards
  within each cost. They're historically important, but stale and missing
  every set from Nocturne on. The Dominion Strategy wiki has them under
  "List of Cards by Qvist Rankings".
- **ThunderDominion**: rankings from the Dominion Discord since 2018.
- **Dominion Strategy wiki and forum** (wiki.dominionstrategy.com,
  forum.dominionstrategy.com): per-card articles with strategy and synergy
  notes. These are the best qualitative source. The wiki blocks some
  automated fetchers.
- **Simulators** (Geronimoo's, Dominiate): trust their win rates only when
  both bots aim at the same end condition and neither tries for more than
  one Province per turn, e.g. Big Money or a slog against Big Money.
  Otherwise the results mostly show which bot was easier to write, since
  bots don't adapt to the opponent
  ([Horton](https://adamhorton.com/flog/dominion-the-dangers-of-simulation/)).
- Avoid casual tier lists (TierMaker, listicles), which come from tiny
  samples.

## Commonly misjudged effects

Comparing community ratings before and after a set has been played shows
consistent mistakes (Horton's first-impressions and revisited articles):

- **Underrated**: gaining a card without spending an Action (Cobbler,
  Ironworks), Villagers or Coffers you get when gaining a card (Lackeys,
  Silk Merchant), plain consistency (Star Chart, Merchant Camp), Silver and
  Gold, and mandatory trashing that looks like a drawback (Cathedral).
- **Overrated**: huge effects that don't matter on most boards
  (Capitalism), and cards that "do lots of things" without doing one thing
  well (Rope).
- When the community disagrees sharply about a card, treat its rating as
  unreliable.
- **A card the board has changed**: a rating describes the printed card on
  an average board. A Trait on its pile, a Way, a cost reducer, or a partner
  that supplies the one thing it lacks can make it a different card. Rate
  what it does on this board.

## Caveats

- These ratings reflect experienced online play, which is mostly
  2-player. Attacks and junkers gain value with more players.
- Second editions changed some cards. Check that a rating matches the card
  text you're playing.
- Ratings measure average impact, not a card's role. Judge a kingdom's
  cards by what they do *in that kingdom*, and use these numbers only as
  priors.
