execute if score wear_out timber matches 1.. run scoreboard players set wear_out timber 2
execute unless score wear_out timber matches 1.. run scoreboard players set wear_out timber 1
execute if score wear_out timber matches 2.. run scoreboard players set wear_out timber 0
execute if score wear_out timber matches 1 run playsound minecraft:ui.button.click master @s ~ ~ ~ .2 1.3 .2
execute if score wear_out timber matches 0 run playsound minecraft:ui.button.click master @s ~ ~ ~ .2 1.9 .2
function timber:settings/settings
schedule function timber:settings/reset_gamerule 1t
gamerule sendCommandFeedback false