execute if score drop_loot timber matches 1.. run scoreboard players set drop_loot timber 2
execute unless score drop_loot timber matches 1.. run scoreboard players set drop_loot timber 1
execute if score drop_loot timber matches 2.. run scoreboard players set drop_loot timber 0
execute if score drop_loot timber matches 1 run playsound minecraft:ui.button.click master @s ~ ~ ~ .2 1.9 .2
execute if score drop_loot timber matches 0 run playsound minecraft:ui.button.click master @s ~ ~ ~ .2 1.3 .2
function timber:settings/settings
function timber:settings/end_of_message