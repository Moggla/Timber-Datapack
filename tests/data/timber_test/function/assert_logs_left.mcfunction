#> Fails the test unless exactly n logs are left in the arena. Replaces logs with air while counting, so run it last.
#> @param n expected number of logs
scoreboard objectives add timber_test dummy
execute store result score #logs timber_test run fill ~0 ~0 ~0 ~39 ~19 ~39 minecraft:air replace #minecraft:logs
execute store result score #dtmp timber_test run fill ~0 ~20 ~0 ~39 ~39 ~39 minecraft:air replace #minecraft:logs
scoreboard players operation #logs timber_test += #dtmp timber_test
$assert score #logs timber_test matches $(n)
