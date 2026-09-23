#> Run as and at the tb_scan marker standing on the log to mine: puts the dummy next to that log and lets it mine it.
#> The datapack looks for the dropped item within 7 blocks of the player, a dummy standing on the ground is too far away from a log
#> high up. The dummy floats (gravity 0) on the first free spot (air) of: the 4 sides of the log (+x, -x, +z, -z), the 4 diagonals
#> (the lowest log of a mangrove has roots on all 4 sides), 2 blocks away, then a side with a block that doesn't suffocate (roots, leaves).
#> Without a spot the test fails: a dummy that mines from too far away would make the datapack do nothing, and the test would only
#> warn about a tree that wasn't chopped.
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
$execute unless score #placed timber_test matches 1 if block ~1 ~ ~1 minecraft:air run tp @e[type=minecraft:player,name=$(name),limit=1] ~1 ~-0.5 ~1
execute unless score #placed timber_test matches 1 if block ~1 ~ ~1 minecraft:air run scoreboard players set #placed timber_test 1
$execute unless score #placed timber_test matches 1 if block ~1 ~ ~-1 minecraft:air run tp @e[type=minecraft:player,name=$(name),limit=1] ~1 ~-0.5 ~-1
execute unless score #placed timber_test matches 1 if block ~1 ~ ~-1 minecraft:air run scoreboard players set #placed timber_test 1
$execute unless score #placed timber_test matches 1 if block ~-1 ~ ~1 minecraft:air run tp @e[type=minecraft:player,name=$(name),limit=1] ~-1 ~-0.5 ~1
execute unless score #placed timber_test matches 1 if block ~-1 ~ ~1 minecraft:air run scoreboard players set #placed timber_test 1
$execute unless score #placed timber_test matches 1 if block ~-1 ~ ~-1 minecraft:air run tp @e[type=minecraft:player,name=$(name),limit=1] ~-1 ~-0.5 ~-1
execute unless score #placed timber_test matches 1 if block ~-1 ~ ~-1 minecraft:air run scoreboard players set #placed timber_test 1
$execute unless score #placed timber_test matches 1 if block ~2 ~ ~ minecraft:air run tp @e[type=minecraft:player,name=$(name),limit=1] ~2 ~-0.5 ~
execute unless score #placed timber_test matches 1 if block ~2 ~ ~ minecraft:air run scoreboard players set #placed timber_test 1
$execute unless score #placed timber_test matches 1 if block ~-2 ~ ~ minecraft:air run tp @e[type=minecraft:player,name=$(name),limit=1] ~-2 ~-0.5 ~
execute unless score #placed timber_test matches 1 if block ~-2 ~ ~ minecraft:air run scoreboard players set #placed timber_test 1
$execute unless score #placed timber_test matches 1 if block ~ ~ ~2 minecraft:air run tp @e[type=minecraft:player,name=$(name),limit=1] ~ ~-0.5 ~2
execute unless score #placed timber_test matches 1 if block ~ ~ ~2 minecraft:air run scoreboard players set #placed timber_test 1
$execute unless score #placed timber_test matches 1 if block ~ ~ ~-2 minecraft:air run tp @e[type=minecraft:player,name=$(name),limit=1] ~ ~-0.5 ~-2
execute unless score #placed timber_test matches 1 if block ~ ~ ~-2 minecraft:air run scoreboard players set #placed timber_test 1
# no air: the 4 sides again, now also mangrove roots, moss carpet and leaves (they don't suffocate, the datapack only needs the distance)
$execute unless score #placed timber_test matches 1 if block ~1 ~ ~ #timber_test:dummy_can_stand_in run tp @e[type=minecraft:player,name=$(name),limit=1] ~1 ~-0.5 ~
execute unless score #placed timber_test matches 1 if block ~1 ~ ~ #timber_test:dummy_can_stand_in run scoreboard players set #placed timber_test 1
$execute unless score #placed timber_test matches 1 if block ~-1 ~ ~ #timber_test:dummy_can_stand_in run tp @e[type=minecraft:player,name=$(name),limit=1] ~-1 ~-0.5 ~
execute unless score #placed timber_test matches 1 if block ~-1 ~ ~ #timber_test:dummy_can_stand_in run scoreboard players set #placed timber_test 1
$execute unless score #placed timber_test matches 1 if block ~ ~ ~1 #timber_test:dummy_can_stand_in run tp @e[type=minecraft:player,name=$(name),limit=1] ~ ~-0.5 ~1
execute unless score #placed timber_test matches 1 if block ~ ~ ~1 #timber_test:dummy_can_stand_in run scoreboard players set #placed timber_test 1
$execute unless score #placed timber_test matches 1 if block ~ ~ ~-1 #timber_test:dummy_can_stand_in run tp @e[type=minecraft:player,name=$(name),limit=1] ~ ~-0.5 ~-1
execute unless score #placed timber_test matches 1 if block ~ ~ ~-1 #timber_test:dummy_can_stand_in run scoreboard players set #placed timber_test 1
$execute unless score #placed timber_test matches 1 run fail {"text":"mine_here: no free spot next to the log for dummy $(name), it would mine from too far away"}
$dummy $(name) mine ~ ~ ~
