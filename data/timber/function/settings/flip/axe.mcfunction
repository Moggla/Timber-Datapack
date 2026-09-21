# toggles "Enable <axe>": the button code is 200 plus the position of the axe in the list
scoreboard players operation #axe_index timber = #req timber
scoreboard players remove #axe_index timber 200
execute store result storage timber:axes pick.index int 1 run scoreboard players get #axe_index timber
data remove storage timber:axes pick.axe
function timber:settings/flip/axe_at with storage timber:axes pick
# no axe at that position (an old button): nothing to do
execute unless data storage timber:axes pick.axe run return run function timber:settings/open/tools
function timber:settings/flip/axe_toggle with storage timber:axes pick.axe
