define(case_title, Always stand)
---
title: case_title
...

# case_title

> Difficulty: case_difficulty/100

To play Blackjack as an “always-stander” run the following command:

```terminal
include(run.sh)dnl
```

The UNIX command `yes stand` writes the string “stand” repeteadly to the standard output, which is piped to the executable `blackjack` (assumed to be installed system-wide). The arguments tell Libre Blackjack to play one hundred thousand hands (`-n1e5`) using a flat bet and without asking for insurance if the dealer shows an ace (`no_insurance`). As there is no `blackjack.conf` file, the rules are---as expected---the default ones (see the documentation for details).

This example is only one-way (i.e. the player ignores what the dealer says) so it is better to redirect the standard output to `/dev/null` to save execution time. The results are written as a YAML-formatted data to `stderr` by default once the hands are over, so they will show up in the terminal nevertheless. This format is human-friendly (far more than JSON) so it can be easily parsed, but it also allows complex objects to be represented (arrays, lists, etc.).


```yaml
include(report.yaml)
```

> **Exercise:** verify that the analytical probability of getting a natural playing with a single deck (for both the dealer and the player) is 32/663 = 0.04826546...

case_nav
