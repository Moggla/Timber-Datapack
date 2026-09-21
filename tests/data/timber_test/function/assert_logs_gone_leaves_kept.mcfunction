#> Fails the test if a log is left or if a leaf is gone: the tree was chopped but its leaves must stay (destroy_leaves off).
#> Replaces logs with air while counting, so run it last.
#> @param test name of the test, count_leaves has to be called with the same name before mining
scoreboard objectives add timber_test dummy
execute store result score #logs timber_test run fill ~0 ~0 ~0 ~39 ~19 ~39 minecraft:air replace #minecraft:logs
execute store result score #dtmp timber_test run fill ~0 ~20 ~0 ~39 ~39 ~39 minecraft:air replace #minecraft:logs
scoreboard players operation #logs timber_test += #dtmp timber_test
execute store result score #leaves1 timber_test run clone ~0 ~0 ~0 ~39 ~19 ~39 ~0 ~64 ~0 filtered #minecraft:leaves
execute store result score #dtmp timber_test run clone ~0 ~20 ~0 ~39 ~39 ~39 ~0 ~64 ~0 filtered #minecraft:leaves
scoreboard players operation #leaves1 timber_test += #dtmp timber_test
fill ~0 ~64 ~0 ~39 ~83 ~39 minecraft:air
$scoreboard players operation #leaves1 timber_test -= #leaves0_$(test) timber_test
assert score #logs timber_test matches 0
assert score #leaves1 timber_test matches 0
