# wear out tool: the durability that was counted is the damage of the axe now
execute store result storage timber:axes wear.damage int 1 run scoreboard players get durability timber
function timber:tool/set_damage with storage timber:axes wear
