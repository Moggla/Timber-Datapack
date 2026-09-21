#> Runs when the tests are loaded.
#> The tests run in parallel, dozens of dummies chop in the same tick. Every chop forks its commands with execute at @e[...],
#> and Minecraft limits the forks per command chain (max_command_forks, default 65536). Without this, one in about 10 suite runs
#> left a few leaves of a tree standing (0 in 30 runs with it). One player chopping at a time in a real world does not get near the limit:
#> the biggest trees of the tests (500 blocks) pass with the default when they run alone.
gamerule minecraft:max_command_forks 1000000000
