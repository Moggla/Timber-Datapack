#> Fails the test unless exactly n mangrove roots are left in the arena. Replaces them with air while counting, so run it last.
#> @param n expected number of roots
scoreboard objectives add timber_test dummy
execute store result score #roots timber_test run fill ~0 ~0 ~0 ~39 ~19 ~39 minecraft:air replace minecraft:mangrove_roots
execute store result score #dtmp timber_test run fill ~0 ~20 ~0 ~39 ~39 ~39 minecraft:air replace minecraft:mangrove_roots
scoreboard players operation #roots timber_test += #dtmp timber_test
$assert score #roots timber_test matches $(n)
