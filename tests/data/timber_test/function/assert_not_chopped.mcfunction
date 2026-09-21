#> For a tree the datapack is not allowed to chop (too few leaves next to the trunk): fails the test if it chopped anyway,
#> i.e. if more than the one mined log is gone. Then warns, because every tree should be choppable, this is a known gap.
#> Replaces logs with air while counting, so run it last.
#> @param test name of the test, count_logs and count_adjacent have to be called with the same name
scoreboard objectives add timber_test dummy
execute store result score #logs1 timber_test run fill ~0 ~0 ~0 ~39 ~19 ~39 minecraft:air replace #minecraft:logs
execute store result score #dtmp timber_test run fill ~0 ~20 ~0 ~39 ~39 ~39 minecraft:air replace #minecraft:logs
scoreboard players operation #logs1 timber_test += #dtmp timber_test

# warning first, the CI workflow picks it up from the log
$data modify storage timber_test:tmp test set value "$(test)"
$execute store result storage timber_test:tmp adj int 1 run scoreboard players get #adj_$(test) timber_test
execute store result storage timber_test:tmp min int 1 run scoreboard players get min_leaves_found timber
function timber_test:warn_few_leaves with storage timber_test:tmp

# the one mined log may be gone, nothing else
scoreboard players add #logs1 timber_test 1
# PackTest's assert doesn't take a comparison of two scores (the parse error inside a macro function is swallowed, the test can't fail):
# subtract and compare with matches
$scoreboard players operation #logs1 timber_test -= #logs0_$(test) timber_test
assert score #logs1 timber_test matches 0..
