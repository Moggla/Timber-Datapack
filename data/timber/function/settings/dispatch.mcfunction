# #req: 1 = menu, 2-4 = page, 6-9 = slider, 98 = back to the help, 100+ = toggle a setting (only for admins with the tag timber_admin)
execute unless entity @s[tag=timber_admin] run return run function timber:settings/denied

execute if score #req timber matches 98 run return run function timber:settings/leave

# the triggers stay enabled while the menu is used
function timber:settings/arm

execute if score #req timber matches 1..2 run function timber:settings/open/menu
execute if score #req timber matches 3 run function timber:settings/open/tools
execute if score #req timber matches 6 run function timber:settings/open/blocks
execute if score #req timber matches 7 run function timber:settings/open/ticks
execute if score #req timber matches 8 run function timber:settings/open/treesize
execute if score #req timber matches 9 run function timber:settings/open/leaves
execute if score #req timber matches 100 run function timber:settings/flip/standing
execute if score #req timber matches 101 run function timber:settings/flip/sneaking
execute if score #req timber matches 102 run function timber:settings/flip/destroy_leaves
execute if score #req timber matches 103 run function timber:settings/flip/plant_sapling
execute if score #req timber matches 104 run function timber:settings/flip/destroy_roots
execute if score #req timber matches 105 run function timber:settings/flip/start_chop_on_root
execute if score #req timber matches 106 run function timber:settings/flip/slow_chop
execute if score #req timber matches 107 run function timber:settings/flip/chop_down
execute if score #req timber matches 108 run function timber:settings/flip/stop_chopping
execute if score #req timber matches 109 run function timber:settings/flip/wear_out
execute if score #req timber matches 110 run function timber:settings/flip/drop_loot
execute if score #req timber matches 111 run function timber:settings/flip/hunger
execute if score #req timber matches 112 run function timber:settings/flip/stopsound
execute if score #req timber matches 113 run function timber:settings/flip/chop_trees
execute if score #req timber matches 114 run function timber:settings/flip/chop_fungi
execute if score #req timber matches 115 run function timber:settings/flip/persistent
# 200 and up: the axes of the tools page, in the order of the list
execute if score #req timber matches 200..299 run function timber:settings/flip/axe
