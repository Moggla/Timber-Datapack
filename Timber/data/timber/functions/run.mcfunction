# reset
scoreboard players set leaves_found timber 0
scoreboard players set tree_size timber 0
scoreboard players set tree_type timber 0

# search last broken item (place of tree) and set a marker
execute at @e[distance=..7,type=minecraft:item,tag=!global.ignore,limit=1,nbt={Age:0s}] run summon area_effect_cloud ~ ~ ~ {Tags:["timber_tree","global.ignore"],Duration:2147483647}

# tree

    # validate tree
    execute unless score chop_trees timber matches 1.. unless score @s timber_disabled matches 1.. unless score standing timber matches 1.. unless predicate timber:sneaking at @e[type=minecraft:area_effect_cloud,tag=timber_tree,tag=!timber_slow_chop,distance=..7,sort=arbitrary,limit=1] run function timber:algorithm/tree/validate_run
    execute unless score chop_trees timber matches 1.. unless score @s timber_disabled matches 1.. if score sneaking timber matches 1.. if predicate timber:sneaking at @e[type=minecraft:area_effect_cloud,tag=timber_tree,tag=!timber_slow_chop,distance=..7,sort=arbitrary,limit=1] run function timber:algorithm/tree/validate_run

    # if tree is valid
    execute if score leaves_found timber >= min_leaves_found timber unless score tree_size timber matches 0 run scoreboard players set tree_type timber 1

# reset
scoreboard players set leaves_found timber 0
scoreboard players set tree_size timber 0
kill @e[type=minecraft:area_effect_cloud,tag=timber_checked]

# fungi

    # validate fungi
    execute if score chop_fungi timber matches 1.. unless score @s timber_disabled matches 1.. unless score standing timber matches 1.. unless predicate timber:sneaking at @e[type=minecraft:area_effect_cloud,tag=timber_tree,tag=!timber_slow_chop,distance=..7,sort=arbitrary,limit=1] run function timber:algorithm/fungus/validate_run
    execute if score chop_fungi timber matches 1.. unless score @s timber_disabled matches 1.. if score sneaking timber matches 1.. if predicate timber:sneaking at @e[type=minecraft:area_effect_cloud,tag=timber_tree,tag=!timber_slow_chop,distance=..7,sort=arbitrary,limit=1] run function timber:algorithm/fungus/validate_run

    # if fungi is valid
    execute if score leaves_found timber >= min_leaves_found timber unless score tree_size timber matches 0 run scoreboard players set tree_type timber 2

# if tree or fungi is valid (tree = 1 | fungus = 2)
execute unless score tree_type timber matches 0 run function timber:validated

# remove markers
kill @e[type=minecraft:armor_stand,tag=timber_leaf]
kill @e[type=minecraft:armor_stand,tag=timber_other_stem]
kill @e[type=minecraft:armor_stand,tag=timber_log]
kill @e[type=minecraft:area_effect_cloud,tag=timber_checked]
kill @e[type=minecraft:area_effect_cloud,tag=timber_tree,tag=!timber_slow_chop]