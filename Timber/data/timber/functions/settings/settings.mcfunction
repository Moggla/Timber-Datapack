tellraw @s [{"text":"\u00A7m                                                                                ","color":"dark_gray"}]

tellraw @s [{"text":"                                 Settings"}]

tellraw @s [{"text":"\u00A7m                                                                                ","color":"dark_gray"}]

execute unless score standing timber matches 1.. run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function timber:settings/standing_off"}},{"text":" Works When Standing"}]
execute if score standing timber matches 1.. run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function timber:settings/standing_on"}},{"text":" Works When Standing"}]

execute if score sneaking timber matches 1.. run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function timber:settings/sneaking_off"}},{"text":" Works When Sneaking"}]
execute unless score sneaking timber matches 1.. run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function timber:settings/sneaking_on"}},{"text":" Works When Sneaking"}]

execute unless score wooden_axe timber matches 1.. run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function timber:settings/wooden_axe_off"}},{"text":" Enable Wooden Axe"}]
execute if score wooden_axe timber matches 1.. run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function timber:settings/wooden_axe_on"}},{"text":" Enable Wooden Axe"}]

execute unless score stone_axe timber matches 1.. run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function timber:settings/stone_axe_off"}},{"text":" Enable Stone Axe"}]
execute if score stone_axe timber matches 1.. run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function timber:settings/stone_axe_on"}},{"text":" Enable Stone Axe"}]

execute unless score iron_axe timber matches 1.. run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function timber:settings/iron_axe_off"}},{"text":" Enable Iron Axe"}]
execute if score iron_axe timber matches 1.. run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function timber:settings/iron_axe_on"}},{"text":" Enable Iron Axe"}]

execute unless score golden_axe timber matches 1.. run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function timber:settings/golden_axe_off"}},{"text":" Enable Golden Axe"}]
execute if score golden_axe timber matches 1.. run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function timber:settings/golden_axe_on"}},{"text":" Enable Golden Axe"}]

execute unless score diamond_axe timber matches 1.. run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function timber:settings/diamond_axe_off"}},{"text":" Enable Diamond Axe"}]
execute if score diamond_axe timber matches 1.. run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function timber:settings/diamond_axe_on"}},{"text":" Enable Diamond Axe"}]

execute if score destroy_leaves timber matches 1.. run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function timber:settings/destroy_leaves_off"}},{"text":" Destroy Leaves"}]
execute unless score destroy_leaves timber matches 1.. run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function timber:settings/destroy_leaves_on"}},{"text":" Destroy Leaves"}]

execute if score plant_sapling timber matches 1.. run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function timber:settings/plant_sapling_off"}},{"text":" Auto Plant Saplings"}]
execute unless score plant_sapling timber matches 1.. run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function timber:settings/plant_sapling_on"}},{"text":" Auto Plant Saplings"}]

execute unless score stop_chopping timber matches 1.. run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function timber:settings/stop_chopping_off"}},{"text":" Stop Chopping Once Axe Breaks"}]
execute if score stop_chopping timber matches 1.. unless score wear_out timber matches 1.. run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function timber:settings/stop_chopping_on"}},{"text":" Stop Chopping Once Axe Breaks"}]
execute if score stop_chopping timber matches 1.. if score wear_out timber matches 1.. run tellraw @s ["",{"text":"[ ❌ ]","color":"red","hoverEvent":{"action":"show_text","value":"Can't be enabled when \"Additionally Wear out Tool Depending on Tree Size\" is disabled."}},{"text":" Stop Chopping Once Axe Breaks"}]

execute unless score interfere timber matches 1.. run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function timber:settings/interfere_off"},"hoverEvent":{"action":"show_text","value":"When disabled, custom trees are no longer supported."}},{"text":" Interferes with Other Tree Types"}]
execute if score interfere timber matches 1.. run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function timber:settings/interfere_on"}},{"text":" Interferes with Other Tree Types"}]

execute unless score wear_out timber matches 1.. unless score stop_chopping timber matches 1.. run tellraw @s ["",{"text":"[ ✔ ]","color":"green","hoverEvent":{"action":"show_text","value":"Can't be disabled when \"Stop Chopping Once Axe Breaks\" is enabled."}},{"text":" Additionally Wear out Tool Depending on Tree Size"}]
execute unless score wear_out timber matches 1.. if score stop_chopping timber matches 1.. run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function timber:settings/wear_out_off"}},{"text":" Additionally Wear out Tool Depending on Tree Size"}]
execute if score wear_out timber matches 1.. run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function timber:settings/wear_out_on"}},{"text":" Additionally Wear out Tool Depending on Tree Size"}]

execute if score drop_loot timber matches 1.. run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function timber:settings/drop_loot_off"}},{"text":" Drop Loot Straight into Inventory"},{"text":" (decreases lag)","color":"gray"}]
execute unless score drop_loot timber matches 1.. run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function timber:settings/drop_loot_on"}},{"text":" Drop Loot Straight into Inventory"},{"text":" (decreases lag)","color":"gray"}]

execute if score stopsound timber matches 1.. run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function timber:settings/stopsound_off"}},{"text":" Stop Loud Breaking Noises"},{"text":" (experimental)","color":"gray"}]
execute unless score stopsound timber matches 1.. run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function timber:settings/stopsound_on"}},{"text":" Stop Loud Breaking Noises"},{"text":" (experimental)","color":"gray"}]

execute if score max_tree_size timber matches 555 run tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set max_tree_size timber "},"hoverEvent":{"action":"show_text","value":"Default: 555"}},{"text":" Set Max. Tree Size"}]
execute unless score max_tree_size timber matches 555 run tellraw @s ["",{"text":"[ ✎ ]","color":"gold","clickEvent":{"action":"run_command","value":"/tellraw @s [\"\",{\"text\":\"Max. Tree Size : \"},{\"score\":{\"name\":\"max_tree_size\",\"objective\":\"timber\"}}]"},"hoverEvent":{"action":"show_text","value":"Click to see set number"},"clickEvent":{"action":"suggest_command","value":"/scoreboard players set max_tree_size timber "},"hoverEvent":{"action":"show_text","value":"Default: 555"}},{"text":" Set Max. Tree Size"}]

execute if score min_leaves_found timber matches 5 run tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set min_leaves_found timber "},"hoverEvent":{"action":"show_text","value":"Default: 5"}},{"text":" Set Min. Leaves to Valid a Tree"}]
execute unless score min_leaves_found timber matches 5 run tellraw @s ["",{"text":"[ ✎ ]","color":"gold","clickEvent":{"action":"run_command","value":"/tellraw @s [\"\",{\"text\":\"Min. Leaves to Valid a Tree : \"},{\"score\":{\"name\":\"min_leaves_found\",\"objective\":\"timber\"}}]"},"hoverEvent":{"action":"show_text","value":"Click to see set number"},"clickEvent":{"action":"suggest_command","value":"/scoreboard players set min_leaves_found timber "},"hoverEvent":{"action":"show_text","value":"Default: 5"}},{"text":" Set Min. Leaves to Valid a Tree"}]

tellraw @s [{"text":"\u00A7m                                                                                ","color":"dark_gray"}]

gamerule sendCommandFeedback false