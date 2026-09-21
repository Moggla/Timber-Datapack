#> Like assert_no_tree, but nothing fails: leftovers, and a tree that wasn't chopped at all, only warn.
#> For chops that start at a mangrove log. The datapack searches upwards and sideways from the mined log, downwards only with chop_down,
#> so a branch that bends down again can stay, and if the logs it reaches touch fewer than min_leaves_found leaves it chops nothing at all.
#> That is a gap (the goal is to chop every tree), it is reported, not failed. Nothing can be asserted here that always holds.
#> Replaces logs and leaves with air while counting, so run it last. Two slabs, a command may only touch 32768 blocks.
#> @param test name of the test, count_d7 and count_logs have to be called with the same name
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

execute store result score #roots timber_test run fill ~0 ~0 ~0 ~39 ~19 ~39 minecraft:air replace minecraft:mangrove_roots
execute store result score #dtmp timber_test run fill ~0 ~20 ~0 ~39 ~39 ~39 minecraft:air replace minecraft:mangrove_roots
scoreboard players operation #roots timber_test += #dtmp timber_test
execute store result score #dtmp timber_test run fill ~0 ~0 ~0 ~39 ~19 ~39 minecraft:air replace minecraft:muddy_mangrove_roots
scoreboard players operation #roots timber_test += #dtmp timber_test
execute store result score #dtmp timber_test run fill ~0 ~20 ~0 ~39 ~39 ~39 minecraft:air replace minecraft:muddy_mangrove_roots
scoreboard players operation #roots timber_test += #dtmp timber_test

# warnings
$data modify storage timber_test:tmp test set value "$(test)"
$execute store result storage timber_test:tmp before int 1 run scoreboard players get #d7_$(test) timber_test
execute store result storage timber_test:tmp after int 1 run scoreboard players get #d7_after timber_test
execute if score #d7_after timber_test matches 1.. run function timber_test:warn_d7 with storage timber_test:tmp
$execute store result storage timber_test:tmp total int 1 run scoreboard players get #logs0_$(test) timber_test
execute store result storage timber_test:tmp logs int 1 run scoreboard players get #logs timber_test
execute store result storage timber_test:tmp leaves int 1 run scoreboard players get #leaves timber_test
execute store result storage timber_test:tmp roots int 1 run scoreboard players get #roots timber_test
scoreboard players operation #left timber_test = #logs timber_test
scoreboard players operation #left timber_test += #leaves timber_test
scoreboard players operation #left timber_test += #roots timber_test
execute unless score #left timber_test matches 0 run function timber_test:warn_left with storage timber_test:tmp
