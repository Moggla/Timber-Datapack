execute if score diamond_axe timber matches 1.. run scoreboard players set diamond_axe timber 2
execute unless score diamond_axe timber matches 1.. run scoreboard players set diamond_axe timber 1
execute if score diamond_axe timber matches 2.. run scoreboard players set diamond_axe timber 0
execute if score diamond_axe timber matches 1 run playsound minecraft:ui.button.click master @s ~ ~ ~ .2 1.9 .2
execute if score diamond_axe timber matches 0 run playsound minecraft:ui.button.click master @s ~ ~ ~ .2 1.3 .2
function timber:settings/settings2
function timber:settings/end_of_message