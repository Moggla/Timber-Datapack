#execute if block ~ ~ ~ minecraft:birch_leaves[distance=7] run 
setblock ~ ~ ~ minecraft:air destroy

execute if entity @e[distance=..5,type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:birch_log"}}] run function timber:birch_tree/leaves_search
execute if entity @e[distance=..5,type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:birch_wood"}}] run function timber:birch_tree/leaves_search