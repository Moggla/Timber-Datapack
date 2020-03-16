#> search tree
# Vanilla
execute at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:acacia_log"}}] run summon area_effect_cloud ~ ~ ~ {Tags:["timber_tree"],Duration:1}
execute at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:birch_log"}}] run summon area_effect_cloud ~ ~ ~ {Tags:["timber_tree"],Duration:1}
execute at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:dark_oak_log"}}] run summon area_effect_cloud ~ ~ ~ {Tags:["timber_tree"],Duration:1}
execute at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:jungle_log"}}] run summon area_effect_cloud ~ ~ ~ {Tags:["timber_tree"],Duration:1}
execute at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:oak_log"}}] run summon area_effect_cloud ~ ~ ~ {Tags:["timber_tree"],Duration:1}
execute at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:spruce_log"}}] run summon area_effect_cloud ~ ~ ~ {Tags:["timber_tree"],Duration:1}

execute at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:acacia_wood"}}] run summon area_effect_cloud ~ ~ ~ {Tags:["timber_tree"],Duration:1}
execute at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:birch_wood"}}] run summon area_effect_cloud ~ ~ ~ {Tags:["timber_tree"],Duration:1}
execute at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:dark_oak_wood"}}] run summon area_effect_cloud ~ ~ ~ {Tags:["timber_tree"],Duration:1}
execute at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:jungle_wood"}}] run summon area_effect_cloud ~ ~ ~ {Tags:["timber_tree"],Duration:1}
execute at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:oak_wood"}}] run summon area_effect_cloud ~ ~ ~ {Tags:["timber_tree"],Duration:1}
execute at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:spruce_wood"}}] run summon area_effect_cloud ~ ~ ~ {Tags:["timber_tree"],Duration:1}

# Custom trees
function timber_custom_trees:search_tree