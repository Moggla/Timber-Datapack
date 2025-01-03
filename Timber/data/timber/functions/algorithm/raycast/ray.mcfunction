execute if block ~ ~ ~ #minecraft:logs run function timber:algorithm/raycast/hit
scoreboard players add #distance timber 1
execute if score #hit timber matches 0 if score #distance timber matches ..70 positioned ^ ^ ^0.1 run function timber:algorithm/raycast/ray
