#> Counts the leaves (and hanging mangrove propagules, the datapack's leaf predicate counts them too) that touch a log on one of their 6 sides into #adj_<test>, this is the number the datapack compares with min_leaves_found.
#> Doesn't change the tree. The leaves are copied far above the arena, then the logs are copied over them shifted by one block in every
#> direction: every leaf a log lands on is next to a log, what is left of the copy is not (checked against oak: 13, same as the datapack).
#> @param test name of the test
scoreboard objectives add timber_test dummy
fill ~0 ~64 ~0 ~39 ~83 ~39 minecraft:air
fill ~0 ~84 ~0 ~39 ~103 ~39 minecraft:air
execute store result score #ta timber_test run clone ~0 ~0 ~0 ~39 ~19 ~39 ~0 ~64 ~0 filtered #minecraft:leaves
execute store result score #tb timber_test run clone ~0 ~20 ~0 ~39 ~39 ~39 ~0 ~84 ~0 filtered #minecraft:leaves
execute store result score #pa timber_test run clone ~0 ~0 ~0 ~39 ~19 ~39 ~0 ~64 ~0 filtered minecraft:mangrove_propagule[hanging=true]
execute store result score #pb timber_test run clone ~0 ~20 ~0 ~39 ~39 ~39 ~0 ~84 ~0 filtered minecraft:mangrove_propagule[hanging=true]
scoreboard players operation #ta timber_test += #pa timber_test
scoreboard players operation #tb timber_test += #pb timber_test
clone ~0 ~0 ~0 ~39 ~19 ~39 ~1 ~64 ~0 filtered #minecraft:logs
clone ~0 ~20 ~0 ~39 ~39 ~39 ~1 ~84 ~0 filtered #minecraft:logs
clone ~0 ~0 ~0 ~39 ~19 ~39 ~-1 ~64 ~0 filtered #minecraft:logs
clone ~0 ~20 ~0 ~39 ~39 ~39 ~-1 ~84 ~0 filtered #minecraft:logs
clone ~0 ~0 ~0 ~39 ~19 ~39 ~0 ~65 ~0 filtered #minecraft:logs
clone ~0 ~20 ~0 ~39 ~39 ~39 ~0 ~85 ~0 filtered #minecraft:logs
clone ~0 ~0 ~0 ~39 ~19 ~39 ~0 ~63 ~0 filtered #minecraft:logs
clone ~0 ~20 ~0 ~39 ~39 ~39 ~0 ~83 ~0 filtered #minecraft:logs
clone ~0 ~0 ~0 ~39 ~19 ~39 ~0 ~64 ~1 filtered #minecraft:logs
clone ~0 ~20 ~0 ~39 ~39 ~39 ~0 ~84 ~1 filtered #minecraft:logs
clone ~0 ~0 ~0 ~39 ~19 ~39 ~0 ~64 ~-1 filtered #minecraft:logs
clone ~0 ~20 ~0 ~39 ~39 ~39 ~0 ~84 ~-1 filtered #minecraft:logs
execute store result score #ra timber_test run fill ~0 ~64 ~0 ~39 ~83 ~39 minecraft:air replace #minecraft:leaves
execute store result score #rb timber_test run fill ~0 ~84 ~0 ~39 ~103 ~39 minecraft:air replace #minecraft:leaves
execute store result score #pa timber_test run fill ~0 ~64 ~0 ~39 ~83 ~39 minecraft:air replace minecraft:mangrove_propagule[hanging=true]
execute store result score #pb timber_test run fill ~0 ~84 ~0 ~39 ~103 ~39 minecraft:air replace minecraft:mangrove_propagule[hanging=true]
scoreboard players operation #ra timber_test += #pa timber_test
scoreboard players operation #rb timber_test += #pb timber_test
scoreboard players operation #atmp timber_test = #ta timber_test
scoreboard players operation #atmp timber_test += #tb timber_test
scoreboard players operation #atmp timber_test -= #ra timber_test
scoreboard players operation #atmp timber_test -= #rb timber_test
$scoreboard players operation #adj_$(test) timber_test = #atmp timber_test
fill ~0 ~64 ~0 ~39 ~83 ~39 minecraft:air
fill ~0 ~84 ~0 ~39 ~103 ~39 minecraft:air
