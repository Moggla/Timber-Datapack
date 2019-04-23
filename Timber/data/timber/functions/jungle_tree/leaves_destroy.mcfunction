#execute if block ~ ~ ~ minecraft:jungle_leaves[distance=7] run 
setblock ~ ~ ~ minecraft:air destroy

execute if entity @e[distance=..5,type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:jungle_log"}}] run function timber:jungle_tree/leaves_search
execute if entity @e[distance=..5,type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:jungle_wood"}}] run function timber:jungle_tree/leaves_search