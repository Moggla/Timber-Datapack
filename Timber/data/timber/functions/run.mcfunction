# reset
scoreboard players set leaves_found timber 0
scoreboard players set tree_size timber 0
scoreboard players set tree_type timber 0

# load settings to other scoreboard (leaves persistent)
execute unless score persistent timber matches 1.. run scoreboard players set @s timber_prsistent 0
execute if score persistent timber matches 1.. run scoreboard players set @s timber_prsistent 1

# search last broken item (place of tree) and set a marker
execute at @e[type=minecraft:item,distance=..7,limit=1,nbt={Age:0s}] run summon area_effect_cloud ~ ~ ~ {Tags:["timber_tree","global.ignore"],Duration:2147483647}

# Enchantments randomizer
scoreboard players set unbreaking timber 0
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]}}}] run scoreboard players set unbreaking timber 1
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:2s}]}}}] run scoreboard players set unbreaking timber 2
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:3s}]}}}] run scoreboard players set unbreaking timber 3

# get durability
function timber:tool/durability_get

# scan through tree
    # tree
        execute if score chop_trees timber matches 1.. at @e[type=minecraft:area_effect_cloud,tag=timber_tree,tag=!timber_slow_chop,distance=..7,sort=arbitrary,limit=1] run function timber:algorithm/tree/run
        execute store result score leaves_found timber if entity @e[type=minecraft:area_effect_cloud,tag=timber_leaves_found]
        # if tree is valid
        execute if score leaves_found timber >= min_leaves_found timber unless score tree_size timber matches 0 run scoreboard players set tree_type timber 1

    # fungi (only if not tree already)
       execute if score tree_type timber matches 0 if score chop_fungi timber matches 1.. run function timber:run_fungi

# if tree or fungi is valid (tree = 1 | fungus = 2)
execute unless score tree_type timber matches 0 run function timber:validated

# remove markers
execute if score chop_fungi timber matches 1.. run kill @e[type=minecraft:item,nbt={Item:{tag:{Tags:[timber_location]}}}]
execute if score chop_fungi timber matches 1.. run clear @s knowledge_book{Tags:[timber_location]}
kill @e[type=minecraft:area_effect_cloud,tag=timber_tree,tag=!timber_slow_chop]
kill @e[type=minecraft:area_effect_cloud,tag=timber_logs,tag=!timber_destroy]
kill @e[type=minecraft:area_effect_cloud,tag=timber_leaf,tag=!timber_destroy]
kill @e[type=minecraft:area_effect_cloud,tag=timber_stem,tag=!timber_destroy]
kill @e[type=minecraft:area_effect_cloud,tag=timber_cap,tag=!timber_destroy]
kill @e[type=minecraft:area_effect_cloud,tag=timber_leaves_found]
kill @e[type=minecraft:area_effect_cloud,tag=timber_leaf_distance]
kill @e[type=minecraft:area_effect_cloud,tag=timber_other_stem]