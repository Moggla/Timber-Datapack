#> Counts the leaves (and hanging mangrove propagules, the datapack's leaf predicate counts them too) within 2 blocks of a log (1 block on one of its 6 sides, or 2 blocks straight or around an edge) into #adj_<test>, this is the number the datapack compares with min_leaves_found.
#> Doesn't change the tree. The leaves are copied far above the arena, then the logs are copied over them shifted to every place within 2 blocks:
#> every leaf a log lands on is within 2 blocks of a log, what is left of the copy is not. The source of a shift is cut so nothing is copied outside the arena.
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
# and 2 blocks away (straight or around an edge), the datapack counts those too when there are too few right at the trunk
clone ~0 ~0 ~0 ~39 ~19 ~37 ~0 ~64 ~2 filtered #minecraft:logs
clone ~0 ~20 ~0 ~39 ~39 ~37 ~0 ~84 ~2 filtered #minecraft:logs
clone ~0 ~0 ~2 ~39 ~19 ~39 ~0 ~64 ~0 filtered #minecraft:logs
clone ~0 ~20 ~2 ~39 ~39 ~39 ~0 ~84 ~0 filtered #minecraft:logs
clone ~0 ~0 ~0 ~37 ~19 ~39 ~2 ~64 ~0 filtered #minecraft:logs
clone ~0 ~20 ~0 ~37 ~39 ~39 ~2 ~84 ~0 filtered #minecraft:logs
clone ~2 ~0 ~0 ~39 ~19 ~39 ~0 ~64 ~0 filtered #minecraft:logs
clone ~2 ~20 ~0 ~39 ~39 ~39 ~0 ~84 ~0 filtered #minecraft:logs
clone ~0 ~0 ~0 ~39 ~19 ~39 ~0 ~66 ~0 filtered #minecraft:logs
clone ~0 ~20 ~0 ~39 ~39 ~39 ~0 ~86 ~0 filtered #minecraft:logs
clone ~0 ~0 ~0 ~39 ~19 ~39 ~0 ~62 ~0 filtered #minecraft:logs
clone ~0 ~20 ~0 ~39 ~39 ~39 ~0 ~82 ~0 filtered #minecraft:logs
clone ~0 ~0 ~0 ~38 ~19 ~38 ~1 ~64 ~1 filtered #minecraft:logs
clone ~0 ~20 ~0 ~38 ~39 ~38 ~1 ~84 ~1 filtered #minecraft:logs
clone ~0 ~0 ~1 ~38 ~19 ~39 ~1 ~64 ~0 filtered #minecraft:logs
clone ~0 ~20 ~1 ~38 ~39 ~39 ~1 ~84 ~0 filtered #minecraft:logs
clone ~1 ~0 ~0 ~39 ~19 ~38 ~0 ~64 ~1 filtered #minecraft:logs
clone ~1 ~20 ~0 ~39 ~39 ~38 ~0 ~84 ~1 filtered #minecraft:logs
clone ~1 ~0 ~1 ~39 ~19 ~39 ~0 ~64 ~0 filtered #minecraft:logs
clone ~1 ~20 ~1 ~39 ~39 ~39 ~0 ~84 ~0 filtered #minecraft:logs
clone ~0 ~0 ~0 ~38 ~19 ~39 ~1 ~65 ~0 filtered #minecraft:logs
clone ~0 ~20 ~0 ~38 ~39 ~39 ~1 ~85 ~0 filtered #minecraft:logs
clone ~1 ~0 ~0 ~39 ~19 ~39 ~0 ~65 ~0 filtered #minecraft:logs
clone ~1 ~20 ~0 ~39 ~39 ~39 ~0 ~85 ~0 filtered #minecraft:logs
clone ~0 ~0 ~0 ~39 ~19 ~38 ~0 ~65 ~1 filtered #minecraft:logs
clone ~0 ~20 ~0 ~39 ~39 ~38 ~0 ~85 ~1 filtered #minecraft:logs
clone ~0 ~0 ~1 ~39 ~19 ~39 ~0 ~65 ~0 filtered #minecraft:logs
clone ~0 ~20 ~1 ~39 ~39 ~39 ~0 ~85 ~0 filtered #minecraft:logs
clone ~0 ~0 ~0 ~38 ~19 ~39 ~1 ~63 ~0 filtered #minecraft:logs
clone ~0 ~20 ~0 ~38 ~39 ~39 ~1 ~83 ~0 filtered #minecraft:logs
clone ~1 ~0 ~0 ~39 ~19 ~39 ~0 ~63 ~0 filtered #minecraft:logs
clone ~1 ~20 ~0 ~39 ~39 ~39 ~0 ~83 ~0 filtered #minecraft:logs
clone ~0 ~0 ~0 ~39 ~19 ~38 ~0 ~63 ~1 filtered #minecraft:logs
clone ~0 ~20 ~0 ~39 ~39 ~38 ~0 ~83 ~1 filtered #minecraft:logs
clone ~0 ~0 ~1 ~39 ~19 ~39 ~0 ~63 ~0 filtered #minecraft:logs
clone ~0 ~20 ~1 ~39 ~39 ~39 ~0 ~83 ~0 filtered #minecraft:logs
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
