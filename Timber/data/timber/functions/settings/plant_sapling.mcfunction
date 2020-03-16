execute if score plant_sapling timber matches 1.. run scoreboard players set plant_sapling timber 2
execute unless score plant_sapling timber matches 1.. run scoreboard players set plant_sapling timber 1
execute if score plant_sapling timber matches 2.. run scoreboard players set plant_sapling timber 0

execute if score plant_sapling timber matches 0 run playsound minecraft:ui.button.click master @s ~ ~ ~ .2 1.3 .2
execute if score plant_sapling timber matches 0 run function timber:settings/settings

execute if score plant_sapling timber matches 1 run playsound minecraft:ui.button.click master @s ~ ~ ~ .2 1.9 .2
execute if score plant_sapling timber matches 1 run tellraw @s ["",{"text":"This setting requires a reload.\nReloading...","color":"yellow"}]
execute if score plant_sapling timber matches 1 run reload
# Show refreshed settings after reload (schedule forgets @s so I tag him to find him)
execute if score plant_sapling timber matches 1 run tag @s add timber_schedule
execute if score plant_sapling timber matches 1 run schedule function timber:settings/settings_schedule 2s

gamerule sendCommandFeedback false