#> Like assert_no_tree for trees with a big crown: no log may be left (fails), leaves that are left only warn.
#> The datapack destroys leaves along their distance values from the logs, in rare cases of very wide crowns (2x2 trunks, cherry) a few
#> leaves are not reached: a gap (the goal is to chop every tree), it is reported, not failed. Leaves with distance=7 warn as before.
#> Replaces logs and leaves with air while counting, so run it last. Two slabs, a command may only touch 32768 blocks.
#> @param test name of the test, count_d7 has to be called with the same name
scoreboard objectives add timber_test dummy
execute store result score #d7_after timber_test run clone ~0 ~0 ~0 ~39 ~19 ~39 ~0 ~64 ~0 filtered #minecraft:leaves[distance=7]
execute store result score #dtmp timber_test run clone ~0 ~20 ~0 ~39 ~39 ~39 ~0 ~64 ~0 filtered #minecraft:leaves[distance=7]
scoreboard players operation #d7_after timber_test += #dtmp timber_test
fill ~0 ~64 ~0 ~39 ~83 ~39 minecraft:air
fill ~0 ~0 ~0 ~39 ~19 ~39 minecraft:air replace #minecraft:leaves[distance=7]
fill ~0 ~20 ~0 ~39 ~39 ~39 minecraft:air replace #minecraft:leaves[distance=7]
execute store result score #logs timber_test run fill ~0 ~0 ~0 ~39 ~19 ~39 minecraft:air replace #minecraft:logs
execute store result score #dtmp timber_test run fill ~0 ~20 ~0 ~39 ~39 ~39 minecraft:air replace #minecraft:logs
scoreboard players operation #logs timber_test += #dtmp timber_test
execute store result score #leaves timber_test run fill ~0 ~0 ~0 ~39 ~19 ~39 minecraft:air replace #minecraft:leaves
execute store result score #dtmp timber_test run fill ~0 ~20 ~0 ~39 ~39 ~39 minecraft:air replace #minecraft:leaves
scoreboard players operation #leaves timber_test += #dtmp timber_test

# warnings
$data modify storage timber_test:tmp test set value "$(test)"
$execute store result storage timber_test:tmp before int 1 run scoreboard players get #d7_$(test) timber_test
execute store result storage timber_test:tmp after int 1 run scoreboard players get #d7_after timber_test
execute if score #d7_after timber_test matches 1.. run function timber_test:warn_d7 with storage timber_test:tmp
execute store result storage timber_test:tmp leaves int 1 run scoreboard players get #leaves timber_test
execute unless score #leaves timber_test matches 0 run function timber_test:warn_leaves_left with storage timber_test:tmp

assert score #logs timber_test matches 0
