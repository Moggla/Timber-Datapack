# every tick: has a player used one of the registered axes? (the scoreboards count the use of an item)
data modify storage timber:axes queue set from storage timber:axes list
function timber:axes/scan_next
