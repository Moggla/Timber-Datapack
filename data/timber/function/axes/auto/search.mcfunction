execute if score #auto_lo timber >= #auto_hi timber run return 0
# mid = (lo + hi + 1) / 2
scoreboard players operation #auto_mid timber = #auto_lo timber
scoreboard players operation #auto_mid timber += #auto_hi timber
scoreboard players add #auto_mid timber 1
scoreboard players operation #auto_mid timber /= #auto_two timber
execute store result storage timber:axes auto.mid int 1 run scoreboard players get #auto_mid timber
function timber:axes/auto/probe with storage timber:axes auto
execute if score #auto_ok timber matches 1 run scoreboard players operation #auto_lo timber = #auto_mid timber
execute if score #auto_ok timber matches 0 run scoreboard players operation #auto_hi timber = #auto_mid timber
execute if score #auto_ok timber matches 0 run scoreboard players remove #auto_hi timber 1
function timber:axes/auto/search
