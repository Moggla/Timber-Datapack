### reset ###
scoreboard players set leaves_found timber 0
scoreboard players set tree_size timber 0

### validate tree by the fresh chopped log ###
execute if score @s t_sneak_time matches 0 at @e[distance=..6,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:acacia_log"}}] run function timber:acacia_tree/validate_run
execute if score @s t_sneak_time matches 0 at @e[distance=..6,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:acacia_wood"}}] run function timber:acacia_tree/validate_run
execute if score @s t_sneak_time matches 0 at @e[distance=..6,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:birch_log"}}] run function timber:birch_tree/validate_run
execute if score @s t_sneak_time matches 0 at @e[distance=..6,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:birch_wood"}}] run function timber:birch_tree/validate_run
execute if score @s t_sneak_time matches 0 at @e[distance=..6,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:dark_oak_log"}}] run function timber:dark_oak_tree/validate_run
execute if score @s t_sneak_time matches 0 at @e[distance=..6,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:dark_oak_wood"}}] run function timber:dark_oak_tree/validate_run
execute if score @s t_sneak_time matches 0 at @e[distance=..6,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:jungle_log"}}] run function timber:jungle_tree/validate_run
execute if score @s t_sneak_time matches 0 at @e[distance=..6,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:jungle_wood"}}] run function timber:jungle_tree/validate_run
execute if score @s t_sneak_time matches 0 at @e[distance=..6,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:oak_log"}}] run function timber:oak_tree/validate_run
execute if score @s t_sneak_time matches 0 at @e[distance=..6,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:oak_wood"}}] run function timber:oak_tree/validate_run
execute if score @s t_sneak_time matches 0 at @e[distance=..6,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:spruce_log"}}] run function timber:spruce_tree/validate_run
execute if score @s t_sneak_time matches 0 at @e[distance=..6,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:spruce_wood"}}] run function timber:spruce_tree/validate_run

### if tree has been validated ###
execute if score leaves_found timber >= min_leaves_found timber run function timber:validated

### reset scores ###
scoreboard players set @s t_wooden_axe 0
scoreboard players set @s t_stone_axe 0
scoreboard players set @s t_iron_axe 0
scoreboard players set @s t_golden_axe 0
scoreboard players set @s t_diamond_axe 0