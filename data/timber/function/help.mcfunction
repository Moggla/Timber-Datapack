tellraw @s ["",{text:"\u00A7m                                                                                ",color:"dark_gray"}]

tellraw @s ["",{text:"                              Timber Datapack"}]

tellraw @s ["",{text:"\u00A7m                                                                                ",color:"dark_gray"}]

tellraw @s ["",{text:"The Timber Datapack allows you to instantly chop down a tree just by breaking one log with any axe."}]

tellraw @s ["",{text:"By default, sneaking while breaking will not chop the tree."}]

tellraw @s [""]

tellraw @s ["",{text:"Every player can use "},{text:"/trigger TimberToggle",color:"blue",click_event:{action:"suggest_command",command:"/trigger TimberToggle"}},{text:" to individually turn the datapack on or off."}]

tellraw @s [""]

tellraw @s ["","                ",{text:"[click here to check for new updates]",color:"green",click_event:{action:"open_url",url:"https://www.planetminecraft.com/data-pack/timber-datapack/"}}]

tellraw @s [""]

tellraw @s ["","                    ",{text:"[click here to see the settings]",color:"gold",click_event:{action:"run_command",command:"/function timber:settings/settings1_click"}}]

tellraw @s ["",{text:"\u00A7m                                                                                ",color:"dark_gray"}]

function timber:settings/end_of_message