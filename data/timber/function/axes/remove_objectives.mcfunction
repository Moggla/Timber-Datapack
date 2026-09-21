# removes the scoreboard of every axe in the queue
execute unless data storage timber:axes queue[0] run return 0
function timber:axes/remove_objective with storage timber:axes queue[0]
data remove storage timber:axes queue[0]
function timber:axes/remove_objectives
