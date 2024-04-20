tellraw @s [{"text":"\u00A7m                                                                                ","color":"dark_gray"}]

tellraw @s [{"text":"                                 Settings"}]

tellraw @s [{"text":"\u00A7m                                                                                ","color":"dark_gray"}]

execute if score destroy_leaves timber matches 1.. run tellraw @s ["",{"text":"[On]","color":"green","clickEvent":{"action":"run_command","value":"/function timber:settings/destroy_leaves_on"}},{"text":" "},{"text":"[Off]","color":"red","clickEvent":{"action":"run_command","value":"/function timber:settings/destroy_leaves_off"}},{"text":" ✔ ","color":"green"},{"text":"Destroy Leaves"}]
execute unless score destroy_leaves timber matches 1.. run tellraw @s ["",{"text":"[On]","color":"green","clickEvent":{"action":"run_command","value":"/function timber:settings/destroy_leaves_on"}},{"text":" "},{"text":"[Off]","color":"red","clickEvent":{"action":"run_command","value":"/function timber:settings/destroy_leaves_off"}},{"text":" ❌ ","color":"red"},{"text":"Destroy Leaves"}]

execute if score plant_sapling timber matches 1.. run tellraw @s ["",{"text":"[On]","color":"green","clickEvent":{"action":"run_command","value":"/function timber:settings/plant_sapling_on"}},{"text":" "},{"text":"[Off]","color":"red","clickEvent":{"action":"run_command","value":"/function timber:settings/plant_sapling_off"}},{"text":" ✔ ","color":"green"},{"text":"Auto Plant Saplings"}]
execute unless score plant_sapling timber matches 1.. run tellraw @s ["",{"text":"[On]","color":"green","clickEvent":{"action":"run_command","value":"/function timber:settings/plant_sapling_on"}},{"text":" "},{"text":"[Off]","color":"red","clickEvent":{"action":"run_command","value":"/function timber:settings/plant_sapling_off"}},{"text":" ❌ ","color":"red"},{"text":"Auto Plant Saplings"}]

execute unless score wear_out timber matches 1.. run tellraw @s ["",{"text":"[On]","color":"green","clickEvent":{"action":"run_command","value":"/function timber:settings/wear_out_on"}},{"text":" "},{"text":"[Off]","color":"red","clickEvent":{"action":"run_command","value":"/function timber:settings/wear_out_off"}},{"text":" ✔ ","color":"green"},{"text":"Wear out Tool"}]
execute if score wear_out timber matches 1.. run tellraw @s ["",{"text":"[On]","color":"green","clickEvent":{"action":"run_command","value":"/function timber:settings/wear_out_on"}},{"text":" "},{"text":"[Off]","color":"red","clickEvent":{"action":"run_command","value":"/function timber:settings/wear_out_off"}},{"text":" ❌ ","color":"red"},{"text":"Wear out Tool"}]

execute unless score wooden_axe timber matches 1.. run tellraw @s ["",{"text":"[On]","color":"green","clickEvent":{"action":"run_command","value":"/function timber:settings/wooden_axe_on"}},{"text":" "},{"text":"[Off]","color":"red","clickEvent":{"action":"run_command","value":"/function timber:settings/wooden_axe_off"}},{"text":" ✔ ","color":"green"},{"text":"Enable Wooden Axe"}]
execute if score wooden_axe timber matches 1.. run tellraw @s ["",{"text":"[On]","color":"green","clickEvent":{"action":"run_command","value":"/function timber:settings/wooden_axe_on"}},{"text":" "},{"text":"[Off]","color":"red","clickEvent":{"action":"run_command","value":"/function timber:settings/wooden_axe_off"}},{"text":" ❌ ","color":"red"},{"text":"Enable Wooden Axe"}]

execute unless score stone_axe timber matches 1.. run tellraw @s ["",{"text":"[On]","color":"green","clickEvent":{"action":"run_command","value":"/function timber:settings/stone_axe_on"}},{"text":" "},{"text":"[Off]","color":"red","clickEvent":{"action":"run_command","value":"/function timber:settings/stone_axe_off"}},{"text":" ✔ ","color":"green"},{"text":"Enable Stone Axe"}]
execute if score stone_axe timber matches 1.. run tellraw @s ["",{"text":"[On]","color":"green","clickEvent":{"action":"run_command","value":"/function timber:settings/stone_axe_on"}},{"text":" "},{"text":"[Off]","color":"red","clickEvent":{"action":"run_command","value":"/function timber:settings/stone_axe_off"}},{"text":" ❌ ","color":"red"},{"text":"Enable Stone Axe"}]

execute unless score iron_axe timber matches 1.. run tellraw @s ["",{"text":"[On]","color":"green","clickEvent":{"action":"run_command","value":"/function timber:settings/iron_axe_on"}},{"text":" "},{"text":"[Off]","color":"red","clickEvent":{"action":"run_command","value":"/function timber:settings/iron_axe_off"}},{"text":" ✔ ","color":"green"},{"text":"Enable Iron Axe"}]
execute if score iron_axe timber matches 1.. run tellraw @s ["",{"text":"[On]","color":"green","clickEvent":{"action":"run_command","value":"/function timber:settings/iron_axe_on"}},{"text":" "},{"text":"[Off]","color":"red","clickEvent":{"action":"run_command","value":"/function timber:settings/iron_axe_off"}},{"text":" ❌ ","color":"red"},{"text":"Enable Iron Axe"}]

execute unless score golden_axe timber matches 1.. run tellraw @s ["",{"text":"[On]","color":"green","clickEvent":{"action":"run_command","value":"/function timber:settings/golden_axe_on"}},{"text":" "},{"text":"[Off]","color":"red","clickEvent":{"action":"run_command","value":"/function timber:settings/golden_axe_off"}},{"text":" ✔ ","color":"green"},{"text":"Enable Golden Axe"}]
execute if score golden_axe timber matches 1.. run tellraw @s ["",{"text":"[On]","color":"green","clickEvent":{"action":"run_command","value":"/function timber:settings/golden_axe_on"}},{"text":" "},{"text":"[Off]","color":"red","clickEvent":{"action":"run_command","value":"/function timber:settings/golden_axe_off"}},{"text":" ❌ ","color":"red"},{"text":"Enable Golden Axe"}]

execute unless score diamond_axe timber matches 1.. run tellraw @s ["",{"text":"[On]","color":"green","clickEvent":{"action":"run_command","value":"/function timber:settings/diamond_axe_on"}},{"text":" "},{"text":"[Off]","color":"red","clickEvent":{"action":"run_command","value":"/function timber:settings/diamond_axe_off"}},{"text":" ✔ ","color":"green"},{"text":"Enable Diamond Axe"}]
execute if score diamond_axe timber matches 1.. run tellraw @s ["",{"text":"[On]","color":"green","clickEvent":{"action":"run_command","value":"/function timber:settings/diamond_axe_on"}},{"text":" "},{"text":"[Off]","color":"red","clickEvent":{"action":"run_command","value":"/function timber:settings/diamond_axe_off"}},{"text":" ❌ ","color":"red"},{"text":"Enable Diamond Axe"}]

execute unless score stop_chopping timber matches 1.. run tellraw @s ["",{"text":"[On]","color":"green","clickEvent":{"action":"run_command","value":"/function timber:settings/stop_chopping_on"}},{"text":" "},{"text":"[Off]","color":"red","clickEvent":{"action":"run_command","value":"/function timber:settings/stop_chopping_off"}},{"text":" ✔ ","color":"green"},{"text":"Stop Chopping once Axe Breaks"}]
execute if score stop_chopping timber matches 1.. run tellraw @s ["",{"text":"[On]","color":"green","clickEvent":{"action":"run_command","value":"/function timber:settings/stop_chopping_on"}},{"text":" "},{"text":"[Off]","color":"red","clickEvent":{"action":"run_command","value":"/function timber:settings/stop_chopping_off"}},{"text":" ❌ ","color":"red"},{"text":"Stop Chopping once Axe Breaks"}]

execute if score max_tree_size timber matches 144 run tellraw @s ["",{"text":"   [Set]   ","color":"gold","clickEvent":{"action":"suggest_command","value":"/scoreboard players set max_tree_size timber "},"hoverEvent":{"action":"show_text","value":"Default: 144"}},{"text":" ✎ ","color":"gray"},{"text":"Set Max. Tree Size"}]
execute unless score max_tree_size timber matches 144 run tellraw @s ["",{"text":"   [Set]   ","color":"gold","clickEvent":{"action":"suggest_command","value":"/scoreboard players set max_tree_size timber "},"hoverEvent":{"action":"show_text","value":"Default: 144"}},{"text":" ✎ ","color":"gold"},{"text":"Set Max. Tree Size"}]

execute if score min_leaves_found timber matches 5 run tellraw @s ["",{"text":"   [Set]   ","color":"gold","clickEvent":{"action":"suggest_command","value":"/scoreboard players set min_leaves_found timber "},"hoverEvent":{"action":"show_text","value":"Default: 5"}},{"text":" ✎ ","color":"gray"},{"text":"Set Min. Leaves to Valid a Tree"}]
execute unless score min_leaves_found timber matches 5 run tellraw @s ["",{"text":"   [Set]   ","color":"gold","clickEvent":{"action":"suggest_command","value":"/scoreboard players set min_leaves_found timber "},"hoverEvent":{"action":"show_text","value":"Default: 5"}},{"text":" ✎ ","color":"gold"},{"text":"Set Min. Leaves to Valid a Tree"}]

tellraw @s [{"text":"\u00A7m                                                                                ","color":"dark_gray"}]

gamerule sendCommandFeedback false