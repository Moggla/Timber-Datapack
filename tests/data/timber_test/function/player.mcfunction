#> Spawns a dummy player next to the tree base at ~20 ~ ~20 and gives them an axe
#> Every test needs its own dummy name, tests run in parallel. Player names have at most 16 characters, longer ones silently fail to spawn.
#> @param name dummy name, unique per test
#> @param axe item id, e.g. "minecraft:iron_axe"
$dummy $(name) spawn
$tag @e[type=minecraft:player,name=$(name),limit=1] add timber_test_dummy
$tp @e[type=minecraft:player,name=$(name),limit=1] ~19.5 ~ ~20.5
$item replace entity @e[type=minecraft:player,name=$(name),limit=1] weapon.mainhand with $(axe)
