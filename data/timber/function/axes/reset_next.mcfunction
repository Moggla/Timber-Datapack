# walks the old list of axes: keeps the ones that were added outside of a load (custom axes, for example typed in chat), removes
# the scoreboard of the others (they get rebuilt right after by timber:axes/init, from the vanilla axes and the function tag)
execute unless data storage timber:axes queue[0] run return 0
data modify storage timber:axes entry set from storage timber:axes queue[0]
execute if data storage timber:axes entry{custom:1b} run data modify storage timber:axes keep append from storage timber:axes entry
execute unless data storage timber:axes entry{custom:1b} run function timber:axes/remove_objective with storage timber:axes entry
data remove storage timber:axes queue[0]
data remove storage timber:axes entry
function timber:axes/reset_next
