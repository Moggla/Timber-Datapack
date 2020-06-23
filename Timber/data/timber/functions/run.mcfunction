#> reset
scoreboard players set leaves_found timber 0
scoreboard players set tree_size timber 0

#> search last broken item (place of tree) and set a marker
execute at @e[distance=..7,type=minecraft:item,tag=!global.ignore,limit=1,nbt={Age:0s}] run summon area_effect_cloud ~ ~ ~ {Tags:["timber_tree","global.ignore"],Duration:2147483647}

#> validate tree
execute unless score @s timber_disabled matches 1.. unless score standing timber matches 1.. unless predicate timber:sneaking at @e[type=minecraft:area_effect_cloud,tag=timber_tree,tag=!timber_slow_chop,distance=..7,sort=arbitrary,limit=1] run function timber:tree/validate
execute unless score @s timber_disabled matches 1.. if score sneaking timber matches 1.. if predicate timber:sneaking at @e[type=minecraft:area_effect_cloud,tag=timber_tree,tag=!timber_slow_chop,distance=..7,sort=arbitrary,limit=1] run function timber:tree/validate

#> if tree has been validated
execute if score leaves_found timber >= min_leaves_found timber unless score tree_size timber matches 0 run function timber:tree/validated

#> remove markers
kill @e[type=minecraft:armor_stand,tag=timber_log]
kill @e[type=minecraft:area_effect_cloud,tag=timber_checked]
kill @e[type=minecraft:area_effect_cloud,tag=timber_tree,tag=!timber_slow_chop]

#> reset scores
scoreboard players set @s timber_w_axe 0
scoreboard players set @s timber_s_axe 0
scoreboard players set @s timber_i_axe 0
scoreboard players set @s timber_g_axe 0
scoreboard players set @s timber_d_axe 0
scoreboard players set @s timber_n_axe 0