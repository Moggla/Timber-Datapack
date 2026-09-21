#> Fails the test if any log or normal leaf is left around the tree. Leaves with distance=7 only produce a warning (see count_d7).
#> Replaces logs and leaves with air while counting, so run it last.
#> @param test name of the test, for the warning
scoreboard objectives add timber_test dummy
execute store result score #d7_after timber_test run clone ~1 ~ ~1 ~15 ~20 ~15 ~1 ~60 ~1 filtered #minecraft:leaves[distance=7]
fill ~1 ~60 ~1 ~15 ~80 ~15 minecraft:air
fill ~1 ~ ~1 ~15 ~20 ~15 minecraft:air replace #minecraft:leaves[distance=7]
execute store result score #logs timber_test run fill ~1 ~ ~1 ~15 ~20 ~15 minecraft:air replace #minecraft:logs
execute store result score #leaves timber_test run fill ~1 ~ ~1 ~15 ~20 ~15 minecraft:air replace #minecraft:leaves

# warning: tests still pass, the marker is picked up by the CI workflow
$data modify storage timber_test:tmp test set value "$(test)"
execute store result storage timber_test:tmp before int 1 run scoreboard players get #d7_before timber_test
execute store result storage timber_test:tmp after int 1 run scoreboard players get #d7_after timber_test
execute if score #d7_after timber_test matches 1.. run function timber_test:warn_d7 with storage timber_test:tmp

assert score #logs timber_test matches 0
assert score #leaves timber_test matches 0
