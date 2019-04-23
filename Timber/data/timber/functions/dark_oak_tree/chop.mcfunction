### chop down tree logic ###
scoreboard players add tree_size timber 1

### wear out tool with randomizer ###
execute as @e[tag=timber_randomizer,sort=random,limit=1] if entity @s[tag=1] run scoreboard players add durability timber 1

### destroy log ###
setblock ~ ~ ~ minecraft:air destroy

### search for next log ###
execute if score tree_size timber < max_tree_size timber positioned ~ ~1 ~ if block ~ ~ ~ #timber:dark_oak run function timber:dark_oak_tree/durability_check
execute if score tree_size timber < max_tree_size timber positioned ~ ~1 ~1 if block ~ ~ ~ #timber:dark_oak run function timber:dark_oak_tree/durability_check
execute if score tree_size timber < max_tree_size timber positioned ~ ~1 ~-1 if block ~ ~ ~ #timber:dark_oak run function timber:dark_oak_tree/durability_check
execute if score tree_size timber < max_tree_size timber positioned ~1 ~1 ~ if block ~ ~ ~ #timber:dark_oak run function timber:dark_oak_tree/durability_check
execute if score tree_size timber < max_tree_size timber positioned ~1 ~1 ~1 if block ~ ~ ~ #timber:dark_oak run function timber:dark_oak_tree/durability_check
execute if score tree_size timber < max_tree_size timber positioned ~1 ~1 ~-1 if block ~ ~ ~ #timber:dark_oak run function timber:dark_oak_tree/durability_check
execute if score tree_size timber < max_tree_size timber positioned ~-1 ~1 ~ if block ~ ~ ~ #timber:dark_oak run function timber:dark_oak_tree/durability_check
execute if score tree_size timber < max_tree_size timber positioned ~-1 ~1 ~1 if block ~ ~ ~ #timber:dark_oak run function timber:dark_oak_tree/durability_check
execute if score tree_size timber < max_tree_size timber positioned ~-1 ~1 ~-1 if block ~ ~ ~ #timber:dark_oak run function timber:dark_oak_tree/durability_check

execute if score tree_size timber < max_tree_size timber positioned ~ ~ ~1 if block ~ ~ ~ #timber:dark_oak run function timber:dark_oak_tree/durability_check
execute if score tree_size timber < max_tree_size timber positioned ~ ~ ~-1 if block ~ ~ ~ #timber:dark_oak run function timber:dark_oak_tree/durability_check
execute if score tree_size timber < max_tree_size timber positioned ~1 ~ ~ if block ~ ~ ~ #timber:dark_oak run function timber:dark_oak_tree/durability_check
execute if score tree_size timber < max_tree_size timber positioned ~1 ~ ~1 if block ~ ~ ~ #timber:dark_oak run function timber:dark_oak_tree/durability_check
execute if score tree_size timber < max_tree_size timber positioned ~1 ~ ~-1 if block ~ ~ ~ #timber:dark_oak run function timber:dark_oak_tree/durability_check
execute if score tree_size timber < max_tree_size timber positioned ~-1 ~ ~ if block ~ ~ ~ #timber:dark_oak run function timber:dark_oak_tree/durability_check
execute if score tree_size timber < max_tree_size timber positioned ~-1 ~ ~1 if block ~ ~ ~ #timber:dark_oak run function timber:dark_oak_tree/durability_check
execute if score tree_size timber < max_tree_size timber positioned ~-1 ~ ~-1 if block ~ ~ ~ #timber:dark_oak run function timber:dark_oak_tree/durability_check

### destroy leaves ###
execute if score destroy_leaves timber matches 1.. run function timber:dark_oak_tree/leaves_search