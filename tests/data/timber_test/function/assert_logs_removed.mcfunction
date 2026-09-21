#> Fails the test unless exactly n logs are gone compared with count_logs (the mined one included).
#> Replaces logs with air while counting, so run it last.
#> @param test name of the test, count_logs has to be called with the same name before mining
#> @param n expected number of removed logs
scoreboard objectives add timber_test dummy
execute store result score #lleft timber_test run fill ~0 ~0 ~0 ~39 ~19 ~39 minecraft:air replace #minecraft:logs
execute store result score #dtmp timber_test run fill ~0 ~20 ~0 ~39 ~39 ~39 minecraft:air replace #minecraft:logs
scoreboard players operation #lleft timber_test += #dtmp timber_test
$scoreboard players operation #lrem timber_test = #logs0_$(test) timber_test
scoreboard players operation #lrem timber_test -= #lleft timber_test
$assert score #lrem timber_test matches $(n)
