#> if axe is used
execute as @a[scores={timber_w_axe=1..},tag=!global.ignore] at @s unless score wooden_axe timber matches 1.. run function timber:run
execute as @a[scores={timber_s_axe=1..},tag=!global.ignore] at @s unless score stone_axe timber matches 1.. run function timber:run
execute as @a[scores={timber_i_axe=1..},tag=!global.ignore] at @s unless score iron_axe timber matches 1.. run function timber:run
execute as @a[scores={timber_g_axe=1..},tag=!global.ignore] at @s unless score golden_axe timber matches 1.. run function timber:run
execute as @a[scores={timber_d_axe=1..},tag=!global.ignore] at @s unless score diamond_axe timber matches 1.. run function timber:run
execute as @a[scores={timber_n_axe=1..},tag=!global.ignore] at @s unless score netherite_axe timber matches 1.. run function timber:run

#> toggle timber datapack per player
execute as @a[scores={TimberToggle=1..},tag=!global.ignore] run function timber:settings/toggle/timber

#> reset
gamerule sendCommandFeedback true
scoreboard players enable @a TimberToggle