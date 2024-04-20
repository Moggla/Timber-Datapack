execute if score slow_chop timber matches 1.. run scoreboard players set slow_chop timber 2
execute unless score slow_chop timber matches 1.. run scoreboard players set slow_chop timber 1
execute if score slow_chop timber matches 2.. run scoreboard players set slow_chop timber 0
execute if score slow_chop timber matches 1 run playsound minecraft:ui.button.click master @s ~ ~ ~ .2 1.9 .2
execute if score slow_chop timber matches 1 run function timber:slow_chop/loop
execute if score slow_chop timber matches 0 run playsound minecraft:ui.button.click master @s ~ ~ ~ .2 1.3 .2
function timber:settings/settings1
function timber:settings/end_of_message