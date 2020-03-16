#> mark all blocks that will get destroyed
# not interfering (only vanilla)
execute if score interfere timber matches 1.. at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:acacia_log"}}] run function timber:acacia_tree/chop
execute if score interfere timber matches 1.. at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:birch_log"}}] run function timber:birch_tree/chop
execute if score interfere timber matches 1.. at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:dark_oak_log"}}] run function timber:dark_oak_tree/chop
execute if score interfere timber matches 1.. at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:jungle_log"}}] run function timber:jungle_tree/chop
execute if score interfere timber matches 1.. at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:oak_log"}}] run function timber:oak_tree/chop
execute if score interfere timber matches 1.. at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:spruce_log"}}] run function timber:spruce_tree/chop

execute if score interfere timber matches 1.. at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:acacia_wood"}}] run function timber:acacia_tree/chop
execute if score interfere timber matches 1.. at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:birch_wood"}}] run function timber:birch_tree/chop
execute if score interfere timber matches 1.. at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:dark_oak_wood"}}] run function timber:dark_oak_tree/chop
execute if score interfere timber matches 1.. at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:jungle_wood"}}] run function timber:jungle_tree/chop
execute if score interfere timber matches 1.. at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:oak_wood"}}] run function timber:oak_tree/chop
execute if score interfere timber matches 1.. at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:spruce_wood"}}] run function timber:spruce_tree/chop

# interfering (all trees)
execute unless score interfere timber matches 1.. at @e[type=minecraft:area_effect_cloud,tag=timber_tree,sort=nearest,limit=1] run function timber:all_tree/chop