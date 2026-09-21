#> For a structure the datapack must not chop: fails the test if more than the one mined log is gone.
#> Replaces logs with air while counting, so run it last. The arena is handled in two slabs, a command may only touch 32768 blocks.
#> @param test name of the test, count_logs has to be called with the same name before mining
scoreboard objectives add timber_test dummy
execute store result score #logs1 timber_test run fill ~0 ~0 ~0 ~39 ~19 ~39 minecraft:air replace #minecraft:logs
execute store result score #dtmp timber_test run fill ~0 ~20 ~0 ~39 ~39 ~39 minecraft:air replace #minecraft:logs
scoreboard players operation #logs1 timber_test += #dtmp timber_test
scoreboard players add #logs1 timber_test 1
# PackTest's assert doesn't take a comparison of two scores (the parse error inside a macro function is swallowed, the test can't fail):
# subtract and compare with matches
$scoreboard players operation #logs1 timber_test -= #logs0_$(test) timber_test
assert score #logs1 timber_test matches 0..
