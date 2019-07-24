### chop tree by the fresh chopped log ###
execute if score interfere timber matches 1.. at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:acacia_log"}}] run function timber:acacia_tree/durability_check
execute if score interfere timber matches 1.. at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:birch_log"}}] run function timber:birch_tree/durability_check
execute if score interfere timber matches 1.. at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:dark_oak_log"}}] run function timber:dark_oak_tree/durability_check
execute if score interfere timber matches 1.. at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:jungle_log"}}] run function timber:jungle_tree/durability_check
execute if score interfere timber matches 1.. at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:oak_log"}}] run function timber:oak_tree/durability_check
execute if score interfere timber matches 1.. at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:spruce_log"}}] run function timber:spruce_tree/durability_check

execute if score interfere timber matches 1.. at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:acacia_wood"}}] run function timber:acacia_tree/durability_check
execute if score interfere timber matches 1.. at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:birch_wood"}}] run function timber:birch_tree/durability_check
execute if score interfere timber matches 1.. at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:dark_oak_wood"}}] run function timber:dark_oak_tree/durability_check
execute if score interfere timber matches 1.. at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:jungle_wood"}}] run function timber:jungle_tree/durability_check
execute if score interfere timber matches 1.. at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:oak_wood"}}] run function timber:oak_tree/durability_check
execute if score interfere timber matches 1.. at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:spruce_wood"}}] run function timber:spruce_tree/durability_check

execute unless score interfere timber matches 1.. at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:acacia_log"}}] run function timber:all_tree/durability_check
execute unless score interfere timber matches 1.. at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:birch_log"}}] run function timber:all_tree/durability_check
execute unless score interfere timber matches 1.. at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:dark_oak_log"}}] run function timber:all_tree/durability_check
execute unless score interfere timber matches 1.. at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:jungle_log"}}] run function timber:all_tree/durability_check
execute unless score interfere timber matches 1.. at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:oak_log"}}] run function timber:all_tree/durability_check
execute unless score interfere timber matches 1.. at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:spruce_log"}}] run function timber:all_tree/durability_check

execute unless score interfere timber matches 1.. at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:acacia_wood"}}] run function timber:all_tree/durability_check
execute unless score interfere timber matches 1.. at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:birch_wood"}}] run function timber:all_tree/durability_check
execute unless score interfere timber matches 1.. at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:dark_oak_wood"}}] run function timber:all_tree/durability_check
execute unless score interfere timber matches 1.. at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:jungle_wood"}}] run function timber:all_tree/durability_check
execute unless score interfere timber matches 1.. at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:oak_wood"}}] run function timber:all_tree/durability_check
execute unless score interfere timber matches 1.. at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:spruce_wood"}}] run function timber:all_tree/durability_check

execute at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"biomesoplenty:fir_log"}}] run function timber:all_tree/durability_check
execute at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"biomesoplenty:redwood_log"}}] run function timber:all_tree/durability_check
execute at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"biomesoplenty:cherry_log"}}] run function timber:all_tree/durability_check
execute at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"biomesoplenty:mahogany_log"}}] run function timber:all_tree/durability_check
execute at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"biomesoplenty:jacaranda_log"}}] run function timber:all_tree/durability_check
execute at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"biomesoplenty:palm_log"}}] run function timber:all_tree/durability_check
execute at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"biomesoplenty:willow_log"}}] run function timber:all_tree/durability_check
execute at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"biomesoplenty:dead_log"}}] run function timber:all_tree/durability_check
execute at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"biomesoplenty:magic_log"}}] run function timber:all_tree/durability_check
execute at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"biomesoplenty:umbran_log"}}] run function timber:all_tree/durability_check
execute at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"biomesoplenty:hellbark_log"}}] run function timber:all_tree/durability_check
execute at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"biomesoplenty:ethereal_log"}}] run function timber:all_tree/durability_check

execute at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"biomesoplenty:fir_wood"}}] run function timber:all_tree/durability_check
execute at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"biomesoplenty:redwood_wood"}}] run function timber:all_tree/durability_check
execute at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"biomesoplenty:cherry_wood"}}] run function timber:all_tree/durability_check
execute at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"biomesoplenty:mahogany_wood"}}] run function timber:all_tree/durability_check
execute at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"biomesoplenty:jacaranda_wood"}}] run function timber:all_tree/durability_check
execute at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"biomesoplenty:palm_wood"}}] run function timber:all_tree/durability_check
execute at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"biomesoplenty:willow_wood"}}] run function timber:all_tree/durability_check
execute at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"biomesoplenty:dead_wood"}}] run function timber:all_tree/durability_check
execute at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"biomesoplenty:magic_wood"}}] run function timber:all_tree/durability_check
execute at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"biomesoplenty:umbran_wood"}}] run function timber:all_tree/durability_check
execute at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"biomesoplenty:hellbark_wood"}}] run function timber:all_tree/durability_check
execute at @e[distance=..7,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"biomesoplenty:ethereal_wood"}}] run function timber:all_tree/durability_check