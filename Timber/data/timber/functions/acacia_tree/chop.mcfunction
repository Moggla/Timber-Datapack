### keep track of tree size ###
scoreboard players add tree_size timber 1

### wear out tool with randomizer ###
execute as @e[tag=timber_randomizer,sort=random,limit=1] if entity @s[tag=1] run scoreboard players add durability timber 1

### break log ###
execute unless score drop_loot timber matches 1.. run setblock ~ ~ ~ minecraft:air destroy
execute if score drop_loot timber matches 1.. run loot give @s mine ~ ~ ~ mainhand
execute if score drop_loot timber matches 1.. run setblock ~ ~ ~ minecraft:air replace

### search for next log ###
execute if score tree_size timber < max_tree_size timber positioned ~ ~1 ~ if block ~ ~ ~ #timber:acacia run function timber:acacia_tree/durability_check
execute if score tree_size timber < max_tree_size timber positioned ~ ~1 ~1 if block ~ ~ ~ #timber:acacia run function timber:acacia_tree/durability_check
execute if score tree_size timber < max_tree_size timber positioned ~ ~1 ~-1 if block ~ ~ ~ #timber:acacia run function timber:acacia_tree/durability_check
execute if score tree_size timber < max_tree_size timber positioned ~1 ~1 ~ if block ~ ~ ~ #timber:acacia run function timber:acacia_tree/durability_check
execute if score tree_size timber < max_tree_size timber positioned ~1 ~1 ~1 if block ~ ~ ~ #timber:acacia run function timber:acacia_tree/durability_check
execute if score tree_size timber < max_tree_size timber positioned ~1 ~1 ~-1 if block ~ ~ ~ #timber:acacia run function timber:acacia_tree/durability_check
execute if score tree_size timber < max_tree_size timber positioned ~-1 ~1 ~ if block ~ ~ ~ #timber:acacia run function timber:acacia_tree/durability_check
execute if score tree_size timber < max_tree_size timber positioned ~-1 ~1 ~1 if block ~ ~ ~ #timber:acacia run function timber:acacia_tree/durability_check
execute if score tree_size timber < max_tree_size timber positioned ~-1 ~1 ~-1 if block ~ ~ ~ #timber:acacia run function timber:acacia_tree/durability_check

execute if score tree_size timber < max_tree_size timber positioned ~ ~ ~1 if block ~ ~ ~ #timber:acacia run function timber:acacia_tree/durability_check
execute if score tree_size timber < max_tree_size timber positioned ~ ~ ~-1 if block ~ ~ ~ #timber:acacia run function timber:acacia_tree/durability_check
execute if score tree_size timber < max_tree_size timber positioned ~1 ~ ~ if block ~ ~ ~ #timber:acacia run function timber:acacia_tree/durability_check
execute if score tree_size timber < max_tree_size timber positioned ~1 ~ ~1 if block ~ ~ ~ #timber:acacia run function timber:acacia_tree/durability_check
execute if score tree_size timber < max_tree_size timber positioned ~1 ~ ~-1 if block ~ ~ ~ #timber:acacia run function timber:acacia_tree/durability_check
execute if score tree_size timber < max_tree_size timber positioned ~-1 ~ ~ if block ~ ~ ~ #timber:acacia run function timber:acacia_tree/durability_check
execute if score tree_size timber < max_tree_size timber positioned ~-1 ~ ~1 if block ~ ~ ~ #timber:acacia run function timber:acacia_tree/durability_check
execute if score tree_size timber < max_tree_size timber positioned ~-1 ~ ~-1 if block ~ ~ ~ #timber:acacia run function timber:acacia_tree/durability_check

### destroy leaves ###
execute if score destroy_leaves timber matches 1.. run scoreboard players set leaf_distance timber 0
execute if score destroy_leaves timber matches 1.. run function timber:acacia_tree/leaves_search