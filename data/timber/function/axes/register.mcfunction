# Registers the axe in the storage timber:axes build (item, durability, label), called by timber:api/add_axe.
# 1. split the item id at the colon: namespace and path, the scoreboard criterion needs them (minecraft.used:namespace.path)
data modify storage timber:axes build.pos set value 0
data modify storage timber:axes build.next set value 1
scoreboard players set #axe_pos timber 0
scoreboard players set #axe_next timber 1
function timber:axes/split_step with storage timber:axes build
