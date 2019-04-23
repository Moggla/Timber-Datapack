### search for leaves and note it ###
execute if block ~ ~ ~1 minecraft:birch_leaves[persistent=false] run scoreboard players add leaves_found timber 1
execute if block ~ ~ ~-1 minecraft:birch_leaves[persistent=false] run scoreboard players add leaves_found timber 1
execute if block ~1 ~ ~ minecraft:birch_leaves[persistent=false] run scoreboard players add leaves_found timber 1
execute if block ~-1 ~ ~ minecraft:birch_leaves[persistent=false] run scoreboard players add leaves_found timber 1
execute if block ~ ~1 ~ minecraft:birch_leaves[persistent=false] run scoreboard players add leaves_found timber 1

### width of tree ###
function timber:birch_tree/validate_normal
execute positioned ~ ~ ~1 if block ~ ~ ~ #timber:birch run function timber:birch_tree/validate_big
execute positioned ~ ~ ~-1 if block ~ ~ ~ #timber:birch run function timber:birch_tree/validate_big
execute positioned ~1 ~ ~ if block ~ ~ ~ #timber:birch run function timber:birch_tree/validate_big
execute positioned ~1 ~ ~1 if block ~ ~ ~ #timber:birch run function timber:birch_tree/validate_big
execute positioned ~1 ~ ~-1 if block ~ ~ ~ #timber:birch run function timber:birch_tree/validate_big
execute positioned ~-1 ~ ~ if block ~ ~ ~ #timber:birch run function timber:birch_tree/validate_big
execute positioned ~-1 ~ ~1 if block ~ ~ ~ #timber:birch run function timber:birch_tree/validate_big
execute positioned ~-1 ~ ~-1 if block ~ ~ ~ #timber:birch run function timber:birch_tree/validate_big