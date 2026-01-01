# wear out tool
execute if score @s timber_w_axe matches 1.. run scoreboard players operation damage timber = #wooden_axe_max_durability timber
execute if score @s timber_s_axe matches 1.. run scoreboard players operation damage timber = #stone_axe_max_durability timber
execute if score @s timber_c_axe matches 1.. run scoreboard players operation damage timber = #copper_axe_max_durability timber
execute if score @s timber_i_axe matches 1.. run scoreboard players operation damage timber = #iron_axe_max_durability timber
execute if score @s timber_g_axe matches 1.. run scoreboard players operation damage timber = #golden_axe_max_durability timber
execute if score @s timber_d_axe matches 1.. run scoreboard players operation damage timber = #diamond_axe_max_durability timber
execute if score @s timber_n_axe matches 1.. run scoreboard players operation damage timber = #netherite_axe_max_durability timber
scoreboard players operation damage timber -= durability timber
item modify entity @s weapon.mainhand timber:wear_out
