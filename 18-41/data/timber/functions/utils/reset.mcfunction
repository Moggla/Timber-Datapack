scoreboard players set running timber 0

# reset scores
scoreboard players set @s timber_w_axe 0
scoreboard players set @s timber_s_axe 0
scoreboard players set @s timber_i_axe 0
scoreboard players set @s timber_g_axe 0
scoreboard players set @s timber_d_axe 0
scoreboard players set @s timber_n_axe 0

# remove markers
execute if score chop_fungi timber matches 1.. run kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{Tags:["timber_location"]}}}}]
#execute if score chop_fungi timber matches 1.. run clear @s knowledge_book{Tags:[timber_location]}
kill @e[type=minecraft:marker,tag=timber_tree,tag=!timber_slow_chop]
kill @e[type=minecraft:marker,tag=timber_log,tag=!timber_destroy]
kill @e[type=minecraft:marker,tag=timber_leaf,tag=!timber_destroy]
kill @e[type=minecraft:marker,tag=timber_root,tag=!timber_destroy]
kill @e[type=minecraft:marker,tag=timber_stem,tag=!timber_destroy]
kill @e[type=minecraft:marker,tag=timber_cap,tag=!timber_destroy]
kill @e[type=minecraft:marker,tag=timber_leaves_found]
kill @e[type=minecraft:marker,tag=timber_leaf_distance]
kill @e[type=minecraft:marker,tag=timber_other_stem]

kill @e[type=minecraft:armor_stand,tag=timber_item_check]