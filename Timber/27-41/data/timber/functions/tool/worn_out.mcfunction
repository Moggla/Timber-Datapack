# break axe if worn out
execute if score @s timber_w_axe matches 1.. if score durability timber >= #wooden_axe_max_durability timber run item replace entity @s weapon.mainhand with minecraft:air
execute if score @s timber_w_axe matches 1.. if score durability timber >= #wooden_axe_max_durability timber run playsound minecraft:entity.item.break player @a ~ ~ ~
execute if score @s timber_s_axe matches 1.. if score durability timber >= #stone_axe_max_durability timber run item replace entity @s weapon.mainhand with minecraft:air
execute if score @s timber_s_axe matches 1.. if score durability timber >= #stone_axe_max_durability timber run playsound minecraft:entity.item.break player @a ~ ~ ~
execute if score @s timber_i_axe matches 1.. if score durability timber >= #iron_axe_max_durability timber run item replace entity @s weapon.mainhand with minecraft:air
execute if score @s timber_i_axe matches 1.. if score durability timber >= #iron_axe_max_durability timber run playsound minecraft:entity.item.break player @a ~ ~ ~
execute if score @s timber_g_axe matches 1.. if score durability timber >= #golden_axe_max_durability timber run item replace entity @s weapon.mainhand with minecraft:air
execute if score @s timber_g_axe matches 1.. if score durability timber >= #golden_axe_max_durability timber run playsound minecraft:entity.item.break player @a ~ ~ ~
execute if score @s timber_d_axe matches 1.. if score durability timber >= #diamond_axe_max_durability timber run item replace entity @s weapon.mainhand with minecraft:air
execute if score @s timber_d_axe matches 1.. if score durability timber >= #diamond_axe_max_durability timber run playsound minecraft:entity.item.break player @a ~ ~ ~
execute if score @s timber_n_axe matches 1.. if score durability timber >= #netherite_axe_max_durability timber run item replace entity @s weapon.mainhand with minecraft:air
execute if score @s timber_n_axe matches 1.. if score durability timber >= #netherite_axe_max_durability timber run playsound minecraft:entity.item.break player @a ~ ~ ~