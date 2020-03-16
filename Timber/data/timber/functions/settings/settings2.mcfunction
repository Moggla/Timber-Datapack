tellraw @s [{"text":" "}]
tellraw @s [{"text":" "}]
tellraw @s [{"text":" "}]
tellraw @s [{"text":" "}]
tellraw @s [{"text":" "}]
tellraw @s [{"text":" "}]

tellraw @s [{"text":"\u00A7m                                                                                ","color":"dark_gray"}]

tellraw @s ["",{"text":"                                 Settings                         "},{"text":" < ","clickEvent":{"action":"run_command","value":"/function timber:settings/settings1"}},{"text":"2/2"},{"text":" > ","clickEvent":{"action":"run_command","value":"/function timber:settings/settings2"}}]

tellraw @s [{"text":"\u00A7m                                                                                ","color":"dark_gray"}]

execute unless score wooden_axe timber matches 1.. run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function timber:settings/wooden_axe"}},{"text":" Enable Wooden Axe"}]
execute if score wooden_axe timber matches 1.. run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function timber:settings/wooden_axe"}},{"text":" Enable Wooden Axe"}]

execute unless score stone_axe timber matches 1.. run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function timber:settings/stone_axe"}},{"text":" Enable Stone Axe"}]
execute if score stone_axe timber matches 1.. run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function timber:settings/stone_axe"}},{"text":" Enable Stone Axe"}]

execute unless score iron_axe timber matches 1.. run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function timber:settings/iron_axe"}},{"text":" Enable Iron Axe"}]
execute if score iron_axe timber matches 1.. run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function timber:settings/iron_axe"}},{"text":" Enable Iron Axe"}]

execute unless score golden_axe timber matches 1.. run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function timber:settings/golden_axe"}},{"text":" Enable Golden Axe"}]
execute if score golden_axe timber matches 1.. run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function timber:settings/golden_axe"}},{"text":" Enable Golden Axe"}]

execute unless score diamond_axe timber matches 1.. run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function timber:settings/diamond_axe"}},{"text":" Enable Diamond Axe"}]
execute if score diamond_axe timber matches 1.. run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function timber:settings/diamond_axe"}},{"text":" Enable Diamond Axe"}]

execute unless score netherite_axe timber matches 1.. run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function timber:settings/netherite_axe"}},{"text":" Enable Netherite Axe"}]
execute if score netherite_axe timber matches 1.. run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function timber:settings/netherite_axe"}},{"text":" Enable Netherite Axe"}]

tellraw @s [{"text":" "}]
tellraw @s [{"text":" "}]

execute if score max_tree_size timber matches 555 run tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set max_tree_size timber "},"hoverEvent":{"action":"show_text","value":"Default: 555"}},{"text":" Set Max. Tree Size"}]
execute unless score max_tree_size timber matches 555 run tellraw @s ["",{"text":"[ ✎ ]","color":"gold","clickEvent":{"action":"run_command","value":"/tellraw @s [\"\",{\"text\":\"Max. Tree Size : \"},{\"score\":{\"name\":\"max_tree_size\",\"objective\":\"timber\"}}]"},"hoverEvent":{"action":"show_text","value":"Click to see set number"},"clickEvent":{"action":"suggest_command","value":"/scoreboard players set max_tree_size timber "},"hoverEvent":{"action":"show_text","value":"Default: 555"}},{"text":" Set Max. Tree Size"}]

execute if score min_leaves_found timber matches 5 run tellraw @s ["",{"text":"[ ✎ ]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set min_leaves_found timber "},"hoverEvent":{"action":"show_text","value":"Default: 5"}},{"text":" Set Min. Leaves to Valid a Tree"}]
execute unless score min_leaves_found timber matches 5 run tellraw @s ["",{"text":"[ ✎ ]","color":"gold","clickEvent":{"action":"run_command","value":"/tellraw @s [\"\",{\"text\":\"Min. Leaves to Valid a Tree : \"},{\"score\":{\"name\":\"min_leaves_found\",\"objective\":\"timber\"}}]"},"hoverEvent":{"action":"show_text","value":"Click to see set number"},"clickEvent":{"action":"suggest_command","value":"/scoreboard players set min_leaves_found timber "},"hoverEvent":{"action":"show_text","value":"Default: 5"}},{"text":" Set Min. Leaves to Valid a Tree"}]

tellraw @s [{"text":"\u00A7m                                                                                ","color":"dark_gray"}]

gamerule sendCommandFeedback false