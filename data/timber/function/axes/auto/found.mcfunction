# Reward of the advancement timber:axes/found: an axe changed in the inventory while an axe of #minecraft:axes that is not in
# #timber:axes is in the hotbar (the axe of a mod). The ones that are not in the list yet get registered, so they chop without
# timber:api/add_axe. Only the hotbar is checked: an axe has to be in it to be used, moving it there changes the inventory.
advancement revoke @s only timber:axes/found
# after timber:uninstall the list is gone, nothing is registered any more
execute unless data storage timber:axes list run return 0
execute if items entity @s hotbar.0 #minecraft:axes unless items entity @s hotbar.0 #timber:axes run function timber:axes/auto/slot {slot:0}
execute if items entity @s hotbar.1 #minecraft:axes unless items entity @s hotbar.1 #timber:axes run function timber:axes/auto/slot {slot:1}
execute if items entity @s hotbar.2 #minecraft:axes unless items entity @s hotbar.2 #timber:axes run function timber:axes/auto/slot {slot:2}
execute if items entity @s hotbar.3 #minecraft:axes unless items entity @s hotbar.3 #timber:axes run function timber:axes/auto/slot {slot:3}
execute if items entity @s hotbar.4 #minecraft:axes unless items entity @s hotbar.4 #timber:axes run function timber:axes/auto/slot {slot:4}
execute if items entity @s hotbar.5 #minecraft:axes unless items entity @s hotbar.5 #timber:axes run function timber:axes/auto/slot {slot:5}
execute if items entity @s hotbar.6 #minecraft:axes unless items entity @s hotbar.6 #timber:axes run function timber:axes/auto/slot {slot:6}
execute if items entity @s hotbar.7 #minecraft:axes unless items entity @s hotbar.7 #timber:axes run function timber:axes/auto/slot {slot:7}
execute if items entity @s hotbar.8 #minecraft:axes unless items entity @s hotbar.8 #timber:axes run function timber:axes/auto/slot {slot:8}
