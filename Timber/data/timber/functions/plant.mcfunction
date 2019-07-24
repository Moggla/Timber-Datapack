### replace item-sapling with block-sapling ###
execute if entity @e[distance=0,type=minecraft:item,nbt={Item:{id:"minecraft:acacia_sapling"}}] run setblock ~ ~ ~ minecraft:acacia_sapling
execute if entity @e[distance=0,type=minecraft:item,nbt={Item:{id:"minecraft:birch_sapling"}}] run setblock ~ ~ ~ minecraft:birch_sapling
execute if entity @e[distance=0,type=minecraft:item,nbt={Item:{id:"minecraft:dark_oak_sapling"}}] run setblock ~ ~ ~ minecraft:dark_oak_sapling
execute if entity @e[distance=0,type=minecraft:item,nbt={Item:{id:"minecraft:jungle_sapling"}}] run setblock ~ ~ ~ minecraft:jungle_sapling
execute if entity @e[distance=0,type=minecraft:item,nbt={Item:{id:"minecraft:oak_sapling"}}] run setblock ~ ~ ~ minecraft:oak_sapling
execute if entity @e[distance=0,type=minecraft:item,nbt={Item:{id:"minecraft:spruce_sapling"}}] run setblock ~ ~ ~ minecraft:spruce_sapling

function timber:plant_custom

### on stacks -1 ###
execute store result score @s timber run data get entity @s Item.Count
scoreboard players remove @s timber 1
execute store result entity @s Item.Count byte 1 run scoreboard players get @s timber