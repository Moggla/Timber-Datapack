tellraw @s [{"text":" "}]
tellraw @s [{"text":" "}]
tellraw @s [{"text":" "}]
tellraw @s [{"text":" "}]
tellraw @s [{"text":" "}]
tellraw @s [{"text":" "}]

tellraw @s ["",{"text":"\u00A7m                                                                                ","color":"dark_gray"}]

tellraw @s ["",{"text":"                                 Settings                         "},{"text":" < ","clickEvent":{"action":"run_command","value":"/function timber:settings/settings1"}},{"text":"1/2"},{"text":" > ","clickEvent":{"action":"run_command","value":"/function timber:settings/settings2"}}]

tellraw @s ["",{"text":"\u00A7m                                                                                ","color":"dark_gray"}]

execute unless score standing timber matches 1.. run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function timber:settings/standing"}},{"text":" Works When Standing"}]
execute if score standing timber matches 1.. run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function timber:settings/standing"}},{"text":" Works When Standing"}]

execute if score sneaking timber matches 1.. run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function timber:settings/sneaking"}},{"text":" Works When Sneaking"}]
execute unless score sneaking timber matches 1.. run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function timber:settings/sneaking"}},{"text":" Works When Sneaking"}]

execute unless score destroy_leaves timber matches 1.. run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function timber:settings/destroy_leaves"}},{"text":" Destroy Leaves"}]
execute if score destroy_leaves timber matches 1.. run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function timber:settings/destroy_leaves"}},{"text":" Destroy Leaves"}]

execute if score plant_sapling timber matches 1.. run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function timber:settings/plant_sapling"}},{"text":" Auto Plant Saplings"}]
execute unless score plant_sapling timber matches 1.. run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function timber:settings/plant_sapling"}},{"text":" Auto Plant Saplings"}]

execute if score chop_down timber matches 1.. run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function timber:settings/chop_down"}},{"text":" Enable Chopping Down"}]
execute unless score chop_down timber matches 1.. run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function timber:settings/chop_down"}},{"text":" Enable Chopping Down"}]

execute unless score stop_chopping timber matches 1.. run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function timber:settings/stop_chopping"}},{"text":" Stop Chopping Once Axe Breaks"}]
execute if score stop_chopping timber matches 1.. unless score wear_out timber matches 1.. run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function timber:settings/stop_chopping"}},{"text":" Stop Chopping Once Axe Breaks"}]
execute if score stop_chopping timber matches 1.. if score wear_out timber matches 1.. run tellraw @s ["",{"text":"[ ❌ ]","color":"red","hoverEvent":{"action":"show_text","value":"Can't be enabled when \"Additionally Wear out Tool Depending on Tree Size\" is disabled."}},{"text":" Stop Chopping Once Axe Breaks"}]

execute unless score interfere timber matches 1.. run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function timber:settings/interfere"},"hoverEvent":{"action":"show_text","value":"When disabled, custom trees are no longer supported."}},{"text":" Interferes with Other Tree Types"}]
execute if score interfere timber matches 1.. run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function timber:settings/interfere"}},{"text":" Interferes with Other Tree Types"}]

execute unless score wear_out timber matches 1.. unless score stop_chopping timber matches 1.. run tellraw @s ["",{"text":"[ ✔ ]","color":"green","hoverEvent":{"action":"show_text","value":"Can't be disabled when \"Stop Chopping Once Axe Breaks\" is enabled."}},{"text":" Additionally Wear out Tool Depending on Tree Size"}]
execute unless score wear_out timber matches 1.. if score stop_chopping timber matches 1.. run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function timber:settings/wear_out"}},{"text":" Additionally Wear out Tool Depending on Tree Size"}]
execute if score wear_out timber matches 1.. run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function timber:settings/wear_out"}},{"text":" Additionally Wear out Tool Depending on Tree Size"}]

execute if score drop_loot timber matches 1.. run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function timber:settings/drop_loot"}},{"text":" Drop Loot Straight into Inventory"},{"text":" (decreases lag)","color":"gray"}]
execute unless score drop_loot timber matches 1.. run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function timber:settings/drop_loot"}},{"text":" Drop Loot Straight into Inventory"},{"text":" (decreases lag)","color":"gray"}]

execute if score stopsound timber matches 1.. run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function timber:settings/stopsound"}},{"text":" Stop Loud Breaking Noises"},{"text":" (experimental)","color":"gray"}]
execute unless score stopsound timber matches 1.. run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function timber:settings/stopsound"}},{"text":" Stop Loud Breaking Noises"},{"text":" (experimental)","color":"gray"}]

tellraw @s ["",{"text":"\u00A7m                                                                                ","color":"dark_gray"}]

gamerule sendCommandFeedback false