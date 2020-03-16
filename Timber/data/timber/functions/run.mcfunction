#> reset
scoreboard players set leaves_found timber 0
scoreboard players set tree_size timber 0

#> remove markers
kill @e[type=minecraft:area_effect_cloud,tag=timber_leaf_distance]
kill @e[type=minecraft:area_effect_cloud,tag=timber_randomizer]
kill @e[type=minecraft:area_effect_cloud,tag=timber_checked]
kill @e[type=minecraft:area_effect_cloud,tag=timber_destroy]
kill @e[type=minecraft:area_effect_cloud,tag=timber_tree]

#> search tree and set a marker
function timber:search_tree

#> validate tree
execute unless score standing timber matches 1.. unless predicate timber:sneaking run function timber:validate
execute if score sneaking timber matches 1.. if predicate timber:sneaking run function timber:validate

#> if tree has been validated
execute if score leaves_found timber >= min_leaves_found timber unless score tree_size timber matches 0 run function timber:validated

#> reset scores
scoreboard players set @s timber_w_axe 0
scoreboard players set @s timber_s_axe 0
scoreboard players set @s timber_i_axe 0
scoreboard players set @s timber_g_axe 0
scoreboard players set @s timber_d_axe 0
scoreboard players set @s timber_n_axe 0