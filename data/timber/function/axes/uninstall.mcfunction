# used by uninstall: the scoreboards of the axes and everything that is stored for them
data modify storage timber:axes queue set from storage timber:axes list
function timber:axes/remove_objectives
data remove storage timber:axes list
data remove storage timber:axes queue
data remove storage timber:axes build
data remove storage timber:axes entry
data remove storage timber:axes pick
data remove storage timber:axes wear
