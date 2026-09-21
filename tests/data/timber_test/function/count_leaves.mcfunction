#> Counts all leaves in the arena into #leaves0_<test>, doesn't change the tree (see count_d7 for how and why per test).
#> @param test name of the test
scoreboard objectives add timber_test dummy
$execute store result score #leaves0_$(test) timber_test run clone ~0 ~0 ~0 ~39 ~19 ~39 ~0 ~64 ~0 filtered #minecraft:leaves
execute store result score #dtmp timber_test run clone ~0 ~20 ~0 ~39 ~39 ~39 ~0 ~64 ~0 filtered #minecraft:leaves
$scoreboard players operation #leaves0_$(test) timber_test += #dtmp timber_test
fill ~0 ~64 ~0 ~39 ~83 ~39 minecraft:air
