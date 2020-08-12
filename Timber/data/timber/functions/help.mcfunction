tellraw @s ["",{"text":"\u00A7m                                                                                ","color":"dark_gray"}]

tellraw @s ["",{"text":"                            Timber Datapack"}]

tellraw @s ["",{"text":"\u00A7m                                                                                ","color":"dark_gray"}]

tellraw @s ["",{"text":"The Timber Datapack allows you to instantly chop down a tree just by breaking one log with any axe."}]

tellraw @s ["",{"text":"By default, sneaking while breaking will not chop the tree."}]

tellraw @s ["",{"text":"Every player can use "},{"text":"/trigger TimberToggle","color":"blue","clickEvent":{"action":"suggest_command","value":"/trigger TimberToggle"}},{"text":" to individually turn the datapack on or off."}]

tellraw @a [""]

tellraw @a ["","                ",{"text":"[click here to check for new updates]","color":"gold","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/data-pack/timber-datapack/"}}]

tellraw @s ["","                    ",{"text":"[click here to see the settings]","color":"blue","clickEvent":{"action":"run_command","value":"/function timber:settings/settings1_click"}}]

tellraw @s ["",{"text":"\u00A7m                                                                                ","color":"dark_gray"}]

schedule function timber:settings/reset_gamerule 1t
gamerule sendCommandFeedback false