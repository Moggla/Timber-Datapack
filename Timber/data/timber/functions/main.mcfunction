### search ###
execute as @a[scores={t_wooden_axe=1..}] at @s unless score wooden_axe timber matches 1.. run function timber:run
execute as @a[scores={t_stone_axe=1..}] at @s unless score stone_axe timber matches 1.. run function timber:run
execute as @a[scores={t_iron_axe=1..}] at @s unless score iron_axe timber matches 1.. run function timber:run
execute as @a[scores={t_golden_axe=1..}] at @s unless score golden_axe timber matches 1.. run function timber:run
execute as @a[scores={t_diamond_axe=1..}] at @s unless score diamond_axe timber matches 1.. run function timber:run

### reset ###
gamerule sendCommandFeedback true
scoreboard players set @a t_sneak_time 0