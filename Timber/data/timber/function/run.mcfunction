# reset
scoreboard players set leaves_found timber 0
scoreboard players set tree_size timber 0
scoreboard players set tree_type timber 0

# load settings to other scoreboard (leaves persistent)
execute unless score persistent timber matches 1.. run scoreboard players set @s timber_prsistent 0
execute if score persistent timber matches 1.. run scoreboard players set @s timber_prsistent 1

# search last broken item (place of tree) and set a marker  (limit=1 removed, because carpet on log breaks this)
execute at @e[type=minecraft:item,distance=..7,nbt={Age:0s}] run summon marker ~ ~ ~ {Tags:["timber_tree","global.ignore"]}

# Enchantments randomizer
scoreboard players set unbreaking timber 0
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{levels:{"minecraft:unbreaking": 1}}}}}] run scoreboard players set unbreaking timber 1
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{levels:{"minecraft:unbreaking": 2}}}}}] run scoreboard players set unbreaking timber 2
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{levels:{"minecraft:unbreaking": 3}}}}}] run scoreboard players set unbreaking timber 3

# get durability
function timber:tool/durability_get

# scan through tree
    # tree  (limit=1,sort=arbitrary removed, because carpet on log breaks this)
        execute if score chop_trees timber matches 1.. at @e[type=minecraft:marker,tag=timber_tree,tag=!timber_slow_chop,distance=..7] run function timber:algorithm/tree/run
        execute store result score leaves_found timber if entity @e[type=minecraft:marker,tag=timber_leaves_found]
        # if tree is valid
        execute if score leaves_found timber >= min_leaves_found timber unless score tree_size timber matches 0 run scoreboard players set tree_type timber 1

    # fungi (only if not tree already)
       execute if score tree_type timber matches 0 if score chop_fungi timber matches 1.. run function timber:run_fungi

# if tree or fungi is valid (tree = 1 | fungus = 2)
execute unless score tree_type timber matches 0 if score tree_size timber <= max_tree_size timber run function timber:validated

# remove markers
execute if score chop_fungi timber matches 1.. run kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{Tags:["timber_location"]}}}}]
execute if score chop_fungi timber matches 1.. run clear @s knowledge_book[minecraft:custom_data={Tags:["timber_location"]}]
kill @e[type=minecraft:marker,tag=timber_tree,tag=!timber_slow_chop]
kill @e[type=minecraft:marker,tag=timber_log,tag=!timber_destroy]
kill @e[type=minecraft:marker,tag=timber_leaf,tag=!timber_destroy]
kill @e[type=minecraft:marker,tag=timber_root,tag=!timber_destroy]
kill @e[type=minecraft:marker,tag=timber_stem,tag=!timber_destroy]
kill @e[type=minecraft:marker,tag=timber_cap,tag=!timber_destroy]
kill @e[type=minecraft:marker,tag=timber_leaves_found]
kill @e[type=minecraft:marker,tag=timber_leaf_distance]
kill @e[type=minecraft:marker,tag=timber_other_stem]