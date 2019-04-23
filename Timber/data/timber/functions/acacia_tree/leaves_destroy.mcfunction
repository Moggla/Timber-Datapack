#execute if block ~ ~ ~ minecraft:acacia_leaves[distance=7] run 
setblock ~ ~ ~ minecraft:air destroy

execute if entity @e[distance=..5,type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:acacia_log"}}] run function timber:acacia_tree/leaves_search
execute if entity @e[distance=..5,type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:acacia_wood"}}] run function timber:acacia_tree/leaves_search