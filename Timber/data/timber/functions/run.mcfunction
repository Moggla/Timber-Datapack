### reset ###
scoreboard players set leaves_found timber 0
scoreboard players set tree_size timber 0

### validate tree by the fresh chopped log ###
execute unless score standing timber matches 1.. if score @s t_sneak_time matches 0 at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:acacia_log"}}] run function timber:acacia_tree/validate
execute unless score standing timber matches 1.. if score @s t_sneak_time matches 0 at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:acacia_wood"}}] run function timber:acacia_tree/validate
execute unless score standing timber matches 1.. if score @s t_sneak_time matches 0 at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:birch_log"}}] run function timber:birch_tree/validate
execute unless score standing timber matches 1.. if score @s t_sneak_time matches 0 at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:birch_wood"}}] run function timber:birch_tree/validate
execute unless score standing timber matches 1.. if score @s t_sneak_time matches 0 at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:dark_oak_log"}}] run function timber:dark_oak_tree/validate
execute unless score standing timber matches 1.. if score @s t_sneak_time matches 0 at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:dark_oak_wood"}}] run function timber:dark_oak_tree/validate
execute unless score standing timber matches 1.. if score @s t_sneak_time matches 0 at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:jungle_log"}}] run function timber:jungle_tree/validate
execute unless score standing timber matches 1.. if score @s t_sneak_time matches 0 at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:jungle_wood"}}] run function timber:jungle_tree/validate
execute unless score standing timber matches 1.. if score @s t_sneak_time matches 0 at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:oak_log"}}] run function timber:oak_tree/validate
execute unless score standing timber matches 1.. if score @s t_sneak_time matches 0 at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:oak_wood"}}] run function timber:oak_tree/validate
execute unless score standing timber matches 1.. if score @s t_sneak_time matches 0 at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:spruce_log"}}] run function timber:spruce_tree/validate
execute unless score standing timber matches 1.. if score @s t_sneak_time matches 0 at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:spruce_wood"}}] run function timber:spruce_tree/validate

execute if score sneaking timber matches 1.. if score @s t_sneak_time matches 1.. at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:acacia_log"}}] run function timber:acacia_tree/validate
execute if score sneaking timber matches 1.. if score @s t_sneak_time matches 1.. at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:acacia_wood"}}] run function timber:acacia_tree/validate
execute if score sneaking timber matches 1.. if score @s t_sneak_time matches 1.. at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:birch_log"}}] run function timber:birch_tree/validate
execute if score sneaking timber matches 1.. if score @s t_sneak_time matches 1.. at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:birch_wood"}}] run function timber:birch_tree/validate
execute if score sneaking timber matches 1.. if score @s t_sneak_time matches 1.. at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:dark_oak_log"}}] run function timber:dark_oak_tree/validate
execute if score sneaking timber matches 1.. if score @s t_sneak_time matches 1.. at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:dark_oak_wood"}}] run function timber:dark_oak_tree/validate
execute if score sneaking timber matches 1.. if score @s t_sneak_time matches 1.. at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:jungle_log"}}] run function timber:jungle_tree/validate
execute if score sneaking timber matches 1.. if score @s t_sneak_time matches 1.. at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:jungle_wood"}}] run function timber:jungle_tree/validate
execute if score sneaking timber matches 1.. if score @s t_sneak_time matches 1.. at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:oak_log"}}] run function timber:oak_tree/validate
execute if score sneaking timber matches 1.. if score @s t_sneak_time matches 1.. at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:oak_wood"}}] run function timber:oak_tree/validate
execute if score sneaking timber matches 1.. if score @s t_sneak_time matches 1.. at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:spruce_log"}}] run function timber:spruce_tree/validate
execute if score sneaking timber matches 1.. if score @s t_sneak_time matches 1.. at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:spruce_wood"}}] run function timber:spruce_tree/validate

### remove markers ###
kill @e[tag=timber_checked]

### if tree has been validated ###
execute if score leaves_found timber >= min_leaves_found timber run function timber:validated

### reset scores ###
scoreboard players set @s t_wooden_axe 0
scoreboard players set @s t_stone_axe 0
scoreboard players set @s t_iron_axe 0
scoreboard players set @s t_golden_axe 0
scoreboard players set @s t_diamond_axe 0