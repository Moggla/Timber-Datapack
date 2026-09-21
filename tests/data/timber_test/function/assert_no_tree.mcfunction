#> Fails the test if any log or normal leaf is left in the arena. Leaves with distance=7 only produce a warning (see count_d7).
#> Replaces logs and leaves with air while counting, so run it last. The arena is handled in two slabs, a command may only touch 32768 blocks.
#> With #debug set (see debug_report) it only reports and leaves everything as it is.
#> @param test name of the test, count_d7 has to be called with the same name
scoreboard objectives add timber_test dummy
execute if score #debug timber_test matches 1 run function timber_test:debug_report
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

# warning: tests still pass, the marker is picked up by the CI workflow
$data modify storage timber_test:tmp test set value "$(test)"
$execute store result storage timber_test:tmp before int 1 run scoreboard players get #d7_$(test) timber_test
execute store result storage timber_test:tmp after int 1 run scoreboard players get #d7_after timber_test
execute if score #d7_after timber_test matches 1.. run function timber_test:warn_d7 with storage timber_test:tmp

assert score #logs timber_test matches 0
assert score #leaves timber_test matches 0
