execute unless data storage timber:axes queue[0] run return 0
execute store result storage timber:axes queue[0].code int 1 run scoreboard players get #axe_code timber
execute unless data storage timber:axes queue[0].key run function timber:settings/open/tools_button with storage timber:axes queue[0]
execute if data storage timber:axes queue[0].key run function timber:settings/open/tools_button_key with storage timber:axes queue[0]
scoreboard players add #axe_code timber 1
data remove storage timber:axes queue[0]
function timber:settings/open/tools_next
