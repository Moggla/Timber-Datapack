# pos is the position of the colon
$data modify storage timber:axes build.ns set string storage timber:axes build.item 0 $(pos)
$data modify storage timber:axes build.path set string storage timber:axes build.item $(next)
# the name of the score that says if the axe is enabled in the settings: the item name for vanilla ones (iron_axe), namespace.name for the others
execute if data storage timber:axes build{ns:"minecraft"} run function timber:axes/name_vanilla with storage timber:axes build
execute unless data storage timber:axes build{ns:"minecraft"} run function timber:axes/name_modded with storage timber:axes build
# the scoreboard that counts how often the axe was used
function timber:axes/name_objective with storage timber:axes build
function timber:axes/create with storage timber:axes build
