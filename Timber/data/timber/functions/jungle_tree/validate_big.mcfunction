### search for leaves and note it ###
execute if block ~ ~ ~1 minecraft:jungle_leaves[persistent=false] run scoreboard players add leaves_found timber 1
execute if block ~ ~ ~-1 minecraft:jungle_leaves[persistent=false] run scoreboard players add leaves_found timber 1
execute if block ~1 ~ ~ minecraft:jungle_leaves[persistent=false] run scoreboard players add leaves_found timber 1
execute if block ~-1 ~ ~ minecraft:jungle_leaves[persistent=false] run scoreboard players add leaves_found timber 1
execute if block ~ ~1 ~ minecraft:jungle_leaves[persistent=false] run scoreboard players add leaves_found timber 1

### goto next log ###
execute positioned ~ ~1 ~ if block ~ ~ ~ #timber:jungle run function timber:jungle_tree/validate_big