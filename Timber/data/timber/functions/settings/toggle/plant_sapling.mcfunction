execute if score plant_sapling timber matches 1.. run scoreboard players set plant_sapling timber 2
execute unless score plant_sapling timber matches 1.. run scoreboard players set plant_sapling timber 1
execute if score plant_sapling timber matches 2.. run scoreboard players set plant_sapling timber 0

execute if score plant_sapling timber matches 0 run playsound minecraft:ui.button.click master @s ~ ~ ~ .2 1.3 .2
execute if score plant_sapling timber matches 0 run function timber:settings/settings

execute if score plant_sapling timber matches 1 run playsound minecraft:ui.button.click master @s ~ ~ ~ .2 1.9 .2
# Show refreshed settings after reload (schedule forgets @s so I tag him to find him)
execute if score plant_sapling timber matches 1 run tag @s add timber_settings1
execute if score plant_sapling timber matches 1 run function timber:settings/settings_reload

gamerule sendCommandFeedback false