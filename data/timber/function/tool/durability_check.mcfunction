# check if axe is broken
execute if score @s timber_w_axe matches 1.. unless score durability timber <= #wooden_axe_max_durability timber run scoreboard players set durability_okay timber 0
execute if score @s timber_s_axe matches 1.. unless score durability timber <= #stone_axe_max_durability timber run scoreboard players set durability_okay timber 0
execute if score @s timber_c_axe matches 1.. unless score durability timber <= #copper_axe_max_durability timber run scoreboard players set durability_okay timber 0
execute if score @s timber_i_axe matches 1.. unless score durability timber <= #iron_axe_max_durability timber run scoreboard players set durability_okay timber 0
execute if score @s timber_g_axe matches 1.. unless score durability timber <= #golden_axe_max_durability timber run scoreboard players set durability_okay timber 0
execute if score @s timber_d_axe matches 1.. unless score durability timber <= #diamond_axe_max_durability timber run scoreboard players set durability_okay timber 0
execute if score @s timber_n_axe matches 1.. unless score durability timber <= #netherite_axe_max_durability timber run scoreboard players set durability_okay timber 0
