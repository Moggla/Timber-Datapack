### search for leaves and note it ###
execute if block ~ ~ ~1 minecraft:birch_leaves[persistent=false] run scoreboard players add leaves_found timber 1
execute if block ~ ~ ~-1 minecraft:birch_leaves[persistent=false] run scoreboard players add leaves_found timber 1
execute if block ~1 ~ ~ minecraft:birch_leaves[persistent=false] run scoreboard players add leaves_found timber 1
execute if block ~-1 ~ ~ minecraft:birch_leaves[persistent=false] run scoreboard players add leaves_found timber 1
execute if block ~ ~1 ~ minecraft:birch_leaves[persistent=false] run scoreboard players add leaves_found timber 1

### goto next log ###
execute positioned ~ ~1 ~ if block ~ ~ ~ #timber:birch run function timber:birch_tree/validate_normal
execute unless block ~ ~1 ~ #timber:birch positioned ~ ~1 ~1 if block ~ ~ ~ #timber:birch run function timber:birch_tree/validate_normal
execute unless block ~ ~1 ~ #timber:birch positioned ~ ~1 ~-1 if block ~ ~ ~ #timber:birch run function timber:birch_tree/validate_normal
execute unless block ~ ~1 ~ #timber:birch positioned ~1 ~1 ~ if block ~ ~ ~ #timber:birch run function timber:birch_tree/validate_normal
execute unless block ~ ~1 ~ #timber:birch positioned ~1 ~1 ~1 if block ~ ~ ~ #timber:birch run function timber:birch_tree/validate_normal
execute unless block ~ ~1 ~ #timber:birch positioned ~1 ~1 ~-1 if block ~ ~ ~ #timber:birch run function timber:birch_tree/validate_normal
execute unless block ~ ~1 ~ #timber:birch positioned ~-1 ~1 ~ if block ~ ~ ~ #timber:birch run function timber:birch_tree/validate_normal
execute unless block ~ ~1 ~ #timber:birch positioned ~-1 ~1 ~1 if block ~ ~ ~ #timber:birch run function timber:birch_tree/validate_normal
execute unless block ~ ~1 ~ #timber:birch positioned ~-1 ~1 ~-1 if block ~ ~ ~ #timber:birch run function timber:birch_tree/validate_normal