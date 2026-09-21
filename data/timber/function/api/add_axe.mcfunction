# Adds an axe: timber chops when it is used on a log. Call it from a function of your datapack, see the README.
# It can be called again for the same item, the axe is replaced.
#   function timber:api/add_axe {item:"supertools:emeraldaxe", durability:500, label:"Emerald Axe"}
# item        the item id, also add it to the item tag timber:axes (mushroom stems only drop their marker for tools of that tag)
# durability  the max durability of the item
# label       the name in the settings menu
$data modify storage timber:axes build set value {item:"$(item)",durability:$(durability),label:"$(label)"}
function timber:axes/register
