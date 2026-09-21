#> Run as and at the tb_scan marker standing on the log to mine: puts the dummy next to that log and lets it mine it.
#> The datapack looks for the dropped item within 7 blocks of the player, a dummy standing on the ground is too far away from a log
#> high up. The dummy floats (gravity 0) on a free side of the log, the first of +x, -x, +z, -z that is air.
#> @param name dummy name
$attribute @e[type=minecraft:player,name=$(name),limit=1] minecraft:gravity base set 0
scoreboard players set #placed timber_test 0
$execute unless score #placed timber_test matches 1 if block ~1 ~ ~ minecraft:air run tp @e[type=minecraft:player,name=$(name),limit=1] ~1 ~-0.5 ~
execute unless score #placed timber_test matches 1 if block ~1 ~ ~ minecraft:air run scoreboard players set #placed timber_test 1
$execute unless score #placed timber_test matches 1 if block ~-1 ~ ~ minecraft:air run tp @e[type=minecraft:player,name=$(name),limit=1] ~-1 ~-0.5 ~
execute unless score #placed timber_test matches 1 if block ~-1 ~ ~ minecraft:air run scoreboard players set #placed timber_test 1
$execute unless score #placed timber_test matches 1 if block ~ ~ ~1 minecraft:air run tp @e[type=minecraft:player,name=$(name),limit=1] ~ ~-0.5 ~1
execute unless score #placed timber_test matches 1 if block ~ ~ ~1 minecraft:air run scoreboard players set #placed timber_test 1
$execute unless score #placed timber_test matches 1 if block ~ ~ ~-1 minecraft:air run tp @e[type=minecraft:player,name=$(name),limit=1] ~ ~-0.5 ~-1
execute unless score #placed timber_test matches 1 if block ~ ~ ~-1 minecraft:air run scoreboard players set #placed timber_test 1
$dummy $(name) mine ~ ~ ~
