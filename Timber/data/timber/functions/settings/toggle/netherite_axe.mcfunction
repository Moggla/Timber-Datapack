execute if score netherite_axe timber matches 1.. run scoreboard players set netherite_axe timber 2
execute unless score netherite_axe timber matches 1.. run scoreboard players set netherite_axe timber 1
execute if score netherite_axe timber matches 2.. run scoreboard players set netherite_axe timber 0
execute if score netherite_axe timber matches 1 run playsound minecraft:ui.button.click master @s ~ ~ ~ .2 1.3 .2
execute if score netherite_axe timber matches 0 run playsound minecraft:ui.button.click master @s ~ ~ ~ .2 1.9 .2
function timber:settings/settings2
schedule function timber:settings/reset_gamerule 1t
gamerule sendCommandFeedback false