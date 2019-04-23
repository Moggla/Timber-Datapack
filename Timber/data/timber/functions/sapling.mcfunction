### search for sapling on ground ###
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:acacia_sapling"}}] at @s if block ~ ~ ~ minecraft:air if block ~ ~-1 ~ #timber:grow run function timber:plant
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:birch_sapling"}}] at @s if block ~ ~ ~ minecraft:air if block ~ ~-1 ~ #timber:grow run function timber:plant
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:dark_oak_sapling"}}] at @s if block ~ ~ ~ minecraft:air if block ~ ~-1 ~ #timber:grow run function timber:plant
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:jungle_sapling"}}] at @s if block ~ ~ ~ minecraft:air if block ~ ~-1 ~ #timber:grow run function timber:plant
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:oak_sapling"}}] at @s if block ~ ~ ~ minecraft:air if block ~ ~-1 ~ #timber:grow run function timber:plant
execute as @e[type=minecraft:item,nbt={OnGround:1b,Item:{id:"minecraft:spruce_sapling"}}] at @s if block ~ ~ ~ minecraft:air if block ~ ~-1 ~ #timber:grow run function timber:plant