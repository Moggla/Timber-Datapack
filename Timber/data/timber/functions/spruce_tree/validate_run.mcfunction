### search for leaves and note it ###
execute if block ~ ~ ~1 minecraft:spruce_leaves[persistent=false] run scoreboard players add leaves_found timber 1
execute if block ~ ~ ~-1 minecraft:spruce_leaves[persistent=false] run scoreboard players add leaves_found timber 1
execute if block ~1 ~ ~ minecraft:spruce_leaves[persistent=false] run scoreboard players add leaves_found timber 1
execute if block ~-1 ~ ~ minecraft:spruce_leaves[persistent=false] run scoreboard players add leaves_found timber 1
execute if block ~ ~1 ~ minecraft:spruce_leaves[persistent=false] run scoreboard players add leaves_found timber 1

### width of tree ###
function timber:spruce_tree/validate_normal
execute positioned ~ ~ ~1 if block ~ ~ ~ #timber:spruce run function timber:spruce_tree/validate_big
execute positioned ~ ~ ~-1 if block ~ ~ ~ #timber:spruce run function timber:spruce_tree/validate_big
execute positioned ~1 ~ ~ if block ~ ~ ~ #timber:spruce run function timber:spruce_tree/validate_big
execute positioned ~1 ~ ~1 if block ~ ~ ~ #timber:spruce run function timber:spruce_tree/validate_big
execute positioned ~1 ~ ~-1 if block ~ ~ ~ #timber:spruce run function timber:spruce_tree/validate_big
execute positioned ~-1 ~ ~ if block ~ ~ ~ #timber:spruce run function timber:spruce_tree/validate_big
execute positioned ~-1 ~ ~1 if block ~ ~ ~ #timber:spruce run function timber:spruce_tree/validate_big
execute positioned ~-1 ~ ~-1 if block ~ ~ ~ #timber:spruce run function timber:spruce_tree/validate_big