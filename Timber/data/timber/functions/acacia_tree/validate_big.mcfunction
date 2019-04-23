### search for leaves and note it ###
execute if block ~ ~ ~1 minecraft:acacia_leaves[persistent=false] run scoreboard players add leaves_found timber 1
execute if block ~ ~ ~-1 minecraft:acacia_leaves[persistent=false] run scoreboard players add leaves_found timber 1
execute if block ~1 ~ ~ minecraft:acacia_leaves[persistent=false] run scoreboard players add leaves_found timber 1
execute if block ~-1 ~ ~ minecraft:acacia_leaves[persistent=false] run scoreboard players add leaves_found timber 1
execute if block ~ ~1 ~ minecraft:acacia_leaves[persistent=false] run scoreboard players add leaves_found timber 1

### goto next log ###
execute positioned ~ ~1 ~ if block ~ ~ ~ #timber:acacia run function timber:acacia_tree/validate_big