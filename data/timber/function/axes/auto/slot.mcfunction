# the item id of the axe in the hotbar slot (the Slot of the Inventory has the same number)
$data modify storage timber:axes auto set value {slot:$(slot)}
$data modify storage timber:axes auto.item set from entity @s Inventory[{Slot:$(slot)b}].id
function timber:axes/auto/check with storage timber:axes auto
data remove storage timber:axes auto
