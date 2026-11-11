# Kingdom of the Week eval

Six r/dominion Kingdom of the Week threads from 2021–2022, each with enough
discussion to compare against. An agent analyzes the kingdom blind, and a
reviewer scores the result against the thread.

- `kingdoms.json`: the kingdoms, their setup and the thread ids.
- `make-inputs.py`: writes one `kingdom.md` per kingdom with exact card text
  from dominion-engine's `data/cards`.
- `keys.md`: what each thread concluded. Keep it away from the analyst.

## Running it

1. `./make-inputs.py <dominion-engine>/data/cards <out-dir>`
2. Give each kingdom to a fresh agent session with only this repo's context,
   the `kingdom-analysis` skill and that kingdom's `kingdom.md`. Tell it to
   use no network access and to read nothing under `evals/`. Moving
   `keys.md` out of the checkout for the run is safer still.
3. Check the session's tool calls afterwards for network use or stray reads.
4. Score 0–10 for how close the recommendation is to the best-argued
   position in the thread. Did it find the "must find" items in `keys.md`?
   Is its recommended plan the one the strongest commenters played?

A run costs roughly 100k tokens and five minutes per kingdom. Run a kingdom
or two after a large change to the skill, not after every edit.

## Results so far

Scores are one reviewer's judgment of a single run each (November 2026):

| Kingdom | Original skill | Ratings withheld | Main miss |
| --- | --- | --- | --- |
| k1 | 5 | 4 | Rejected the City Quarter engine. Missed Night Watchman setting it up |
| k2 | 9 | – | – |
| k3 | 9 | – | – |
| k4 | 7.5 | – | Overrated Trader |
| k5 | 6.5 | 6.5 | Undervalued Warehouse + Trail. Without ratings it rated Berserker lower, as the thread did |
| k6 | 4 | 4 | Dismissed Mandarin, the thread's centerpiece |

- The agent was strong when the synergy was written on the cards, and weak
  on plans that depend on sequencing across turns.
- Withholding the ratings did not recover any miss. In k1 it lost Butcher,
  which the rating had helped the first run value.
- The current `kingdom-analysis` skill was rewritten after these runs and
  has not been scored.

## Limits

- A thread is a few opinions, sometimes from one confident commenter, and
  nobody verified the lines. Scores measure agreement, not correctness.
- The model may have seen these threads in training.
- One run per kingdom. Differences of a point are noise.
