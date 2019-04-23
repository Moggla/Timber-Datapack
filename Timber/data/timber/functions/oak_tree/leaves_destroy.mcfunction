#execute if block ~ ~ ~ minecraft:oak_leaves[distance=7] run 
setblock ~ ~ ~ minecraft:air destroy

execute if entity @e[distance=..5,type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:oak_log"}}] run function timber:oak_tree/leaves_search
execute if entity @e[distance=..5,type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:oak_wood"}}] run function timber:oak_tree/leaves_search