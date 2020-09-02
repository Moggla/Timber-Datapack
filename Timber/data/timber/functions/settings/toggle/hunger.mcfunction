execute if score hunger timber matches 1.. run scoreboard players set hunger timber 2
execute unless score hunger timber matches 1.. run scoreboard players set hunger timber 1
execute if score hunger timber matches 2.. run scoreboard players set hunger timber 0
execute if score hunger timber matches 1 run playsound minecraft:ui.button.click master @s ~ ~ ~ .2 1.9 .2
execute if score hunger timber matches 0 run playsound minecraft:ui.button.click master @s ~ ~ ~ .2 1.3 .2
function timber:settings/settings1
function timber:settings/end_of_message