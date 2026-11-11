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
separately.

- Spreadsheet: <https://docs.google.com/spreadsheets/d/1CaVOd1pgAgmjJHXPM1tVMVnlJOLDZaq8BxjW4I1NI1E>
- Local snapshot: `data/card-glicko/*.csv`. `data/card-glicko/FETCHED` is
  the day we downloaded it, and `just refresh-power` updates it. The sheet's
  own "Last Update" date is in the header row of `cards.csv` and can be
  months older.
- Coverage: kingdom cards through Rising Sun. First-edition cards are listed
  with expansion "deprecated", no rank and a large `phi`: few raters still
  compare them, so give those ratings little weight. Separate files cover
  Events/Projects, Ways, Landmarks, Traits, Prophecies and Allies. Arcana is
  not rated yet.
- Columns: `rating` (higher is stronger) and `phi` (uncertainty: treat
  ratings within about one phi as tied). `beats median` is the estimated
  chance of beating a median card. `Qvist category` is the cost bracket.
- Scale for kingdom cards: the median is about 0, the top 10% is above 3.3
  and the bottom 10% is below −3. The extremes are about +6.9 and −7.8.

Look cards up in the CSVs rather than relying on memory, e.g.
`grep -i 'witch' data/card-glicko/cards.csv`.

## Headline picture (Glicko, July 2026)

- **Top tier**: Recruiter, Silk Merchant, King's Court, Daimyo, Peasant,
  Wharf, Chapel, Bridge Troll, Villa, Page, Governor, Sea Witch, Stockpile,
  Margrave, Joust, Masquerade.
- **Strong cheap cards**: Peasant, Chapel, Page, Lackeys and Farrier ($0–2);
  Stockpile, Masquerade, Sentinel, Clashes and Hermit ($3).
- **Weakest**: most Alchemy cards except Scrying Pool, plus Philosopher's
  Stone, Transmute, Stash, Harvest, Pillage, Bureaucrat and Rocks.
- **Landscapes**: Donate, Journey and Deliver top the Events/Projects.
  Way of the Mouse and Way of the Horse lead the Ways. Keep and Wall lead the
  Landmarks. Inherited leads the Traits. Biding Time and Kind Emperor lead
  the Prophecies. Island Folk leads the Allies by a wide margin.

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

## Caveats

- These ratings reflect experienced online play, which is mostly
  2-player. Attacks and junkers gain value with more players.
- Second editions changed some cards. Check that a rating matches the card
  text you're playing.
- Ratings measure average impact, not a card's role. Judge a kingdom's
  cards by what they do *in that kingdom*, and use these numbers only as
  priors.
