#> For a structure that should not be chopped but where the datapack has a known gap: warns if it was chopped, never fails.
#> Replaces logs with air while counting, so run it last. The arena is handled in two slabs, a command may only touch 32768 blocks.
#> @param test name of the test, count_logs has to be called with the same name before mining
scoreboard objectives add timber_test dummy
execute store result score #logs1 timber_test run fill ~0 ~0 ~0 ~39 ~19 ~39 minecraft:air replace #minecraft:logs
execute store result score #dtmp timber_test run fill ~0 ~20 ~0 ~39 ~39 ~39 minecraft:air replace #minecraft:logs
scoreboard players operation #logs1 timber_test += #dtmp timber_test
scoreboard players add #logs1 timber_test 1
$data modify storage timber_test:tmp test set value "$(test)"
$execute store result storage timber_test:tmp before int 1 run scoreboard players get #logs0_$(test) timber_test
execute store result storage timber_test:tmp after int 1 run scoreboard players get #logs1 timber_test
$execute if score #logs1 timber_test < #logs0_$(test) timber_test run function timber_test:warn_chopped_structure with storage timber_test:tmp
