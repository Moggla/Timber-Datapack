# if axe is used
execute as @a[scores={timber_w_axe=1..}] at @s unless score wooden_axe timber matches 1.. run function timber:run
execute as @a[scores={timber_s_axe=1..}] at @s unless score stone_axe timber matches 1.. run function timber:run
execute as @a[scores={timber_i_axe=1..}] at @s unless score iron_axe timber matches 1.. run function timber:run
execute as @a[scores={timber_g_axe=1..}] at @s unless score golden_axe timber matches 1.. run function timber:run
execute as @a[scores={timber_d_axe=1..}] at @s unless score diamond_axe timber matches 1.. run function timber:run
execute as @a[scores={timber_n_axe=1..}] at @s unless score netherite_axe timber matches 1.. run function timber:run

# remove mushroom_stem marker
clear @s knowledge_book{Tags:["timber_location"]}
kill @e[type=minecraft:item,nbt={Item:{tag:{Tags:["timber_location"]}}}]

# reset scores
scoreboard players set @s timber_w_axe 0
scoreboard players set @s timber_s_axe 0
scoreboard players set @s timber_i_axe 0
scoreboard players set @s timber_g_axe 0
scoreboard players set @s timber_d_axe 0
scoreboard players set @s timber_n_axe 0