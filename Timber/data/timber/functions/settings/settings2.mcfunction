tellraw @s ["",{"text":" "}]
tellraw @s ["",{"text":" "}]
tellraw @s ["",{"text":" "}]
tellraw @s ["",{"text":" "}]
tellraw @s ["",{"text":" "}]
tellraw @s ["",{"text":" "}]

tellraw @s ["",{"text":"\u00A7m                                                                                ","color":"dark_gray"}]

tellraw @s ["",{"text":"                                 Settings                         "},{"text":" < ","clickEvent":{"action":"run_command","value":"/function timber:settings/settings1_click"}},{"text":"2/2"},{"text":" > ","clickEvent":{"action":"run_command","value":"/function timber:settings/settings2_click"}}]

tellraw @s ["",{"text":"\u00A7m                                                                                ","color":"dark_gray"}]

execute unless score wooden_axe timber matches 1.. run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function timber:settings/toggle/wooden_axe"}},{"text":" Enable Wooden Axe"}]
execute if score wooden_axe timber matches 1.. run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function timber:settings/toggle/wooden_axe"}},{"text":" Enable Wooden Axe"}]

execute unless score stone_axe timber matches 1.. run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function timber:settings/toggle/stone_axe"}},{"text":" Enable Stone Axe"}]
execute if score stone_axe timber matches 1.. run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function timber:settings/toggle/stone_axe"}},{"text":" Enable Stone Axe"}]

execute unless score iron_axe timber matches 1.. run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function timber:settings/toggle/iron_axe"}},{"text":" Enable Iron Axe"}]
execute if score iron_axe timber matches 1.. run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function timber:settings/toggle/iron_axe"}},{"text":" Enable Iron Axe"}]

execute unless score golden_axe timber matches 1.. run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function timber:settings/toggle/golden_axe"}},{"text":" Enable Golden Axe"}]
execute if score golden_axe timber matches 1.. run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function timber:settings/toggle/golden_axe"}},{"text":" Enable Golden Axe"}]

execute unless score diamond_axe timber matches 1.. run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function timber:settings/toggle/diamond_axe"}},{"text":" Enable Diamond Axe"}]
execute if score diamond_axe timber matches 1.. run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function timber:settings/toggle/diamond_axe"}},{"text":" Enable Diamond Axe"}]

tellraw @s ["",{"text":" "}]

execute unless score slow_chop timber matches 1.. run tellraw @s ["",{"text":"[ ❌ ]","color":"gray","hoverEvent":{"action":"show_text","value":"Not active when \"Chop Slowly\" is disabled."}},{"text":" Set Amount of Destroyed Blocks per Chop"}]
execute if score blocks_per_chop timber matches 1 if score slow_chop timber matches 1.. run tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set blocks_per_chop timber "},"hoverEvent":{"action":"show_text","value":"Default: 1"}},{"text":" Set Amount of Destroyed Blocks per Chop"}]
execute unless score blocks_per_chop timber matches 1 if score slow_chop timber matches 1.. run tellraw @s ["",{"text":"[ ✎ ]","color":"gold","clickEvent":{"action":"suggest_command","value":"/scoreboard players set blocks_per_chop timber "},"hoverEvent":{"action":"show_text","value":"Default: 1"}},{"text":" Set Amount of Destroyed Blocks per Chop"}]

execute unless score slow_chop timber matches 1.. run tellraw @s ["",{"text":"[ ❌ ]","color":"gray","hoverEvent":{"action":"show_text","value":"Not active when \"Chop Slowly\" is disabled."}},{"text":" Set Time in Ticks Between Chops"}]
execute if score time_between_chops timber matches 1 if score slow_chop timber matches 1.. run tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set time_between_chops timber "},"hoverEvent":{"action":"show_text","value":"Default: 1"}},{"text":" Set Time in Ticks Between Chops"}]
execute unless score time_between_chops timber matches 1 if score slow_chop timber matches 1.. run tellraw @s ["",{"text":"[ ✎ ]","color":"gold","clickEvent":{"action":"suggest_command","value":"/scoreboard players set time_between_chops timber "},"hoverEvent":{"action":"show_text","value":"Default: 1"}},{"text":" Set Time in Ticks Between Chops"}]

execute if score max_tree_size timber matches 555 run tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set max_tree_size timber "},"hoverEvent":{"action":"show_text","value":"Default: 555"}},{"text":" Set Max. Tree Size"}]
execute unless score max_tree_size timber matches 555 run tellraw @s ["",{"text":"[ ✎ ]","color":"gold","clickEvent":{"action":"suggest_command","value":"/scoreboard players set max_tree_size timber "},"hoverEvent":{"action":"show_text","value":"Default: 555"}},{"text":" Set Max. Tree Size"}]

execute if score min_leaves_found timber matches 5 run tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set min_leaves_found timber "},"hoverEvent":{"action":"show_text","value":"Default: 5"}},{"text":" Set Min. Leaves to Valid a Tree"}]
execute unless score min_leaves_found timber matches 5 run tellraw @s ["",{"text":"[ ✎ ]","color":"gold","clickEvent":{"action":"suggest_command","value":"/scoreboard players set min_leaves_found timber "},"hoverEvent":{"action":"show_text","value":"Default: 5"}},{"text":" Set Min. Leaves to Valid a Tree"}]

tellraw @s ["",{"text":"\u00A7m                                                                                ","color":"dark_gray"}]

gamerule sendCommandFeedback false