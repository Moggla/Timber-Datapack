# loop (not in minecraft:tick in order to stop it after uninstall)
schedule function timber:main 1t

# if any kind of axe is used
execute as @a[predicate=timber:used_axe,tag=!global.ignore] at @s run function timber:utils/check_max_command_sequence_length

# toggle timber datapack per player
execute as @a[scores={TimberToggle=1},tag=!global.ignore] run function timber:settings/toggle/timber
execute as @a[scores={TimberToggle=2..},tag=!global.ignore] run function timber:settings/menu_request

# open the settings dialog (the dialog button can only run /trigger without a confirmation screen)
execute as @a[scores={TimberSettings=1..},tag=!global.ignore] run function timber:settings/request
execute as @a[scores={TimberSetBlocks=1..},tag=!global.ignore] run function timber:settings/apply/blocks
execute as @a[scores={TimberSetTicks=1..},tag=!global.ignore] run function timber:settings/apply/ticks
execute as @a[scores={TimberSetTreeSize=1..},tag=!global.ignore] run function timber:settings/apply/treesize
execute as @a[scores={TimberSetLeaves=1..},tag=!global.ignore] run function timber:settings/apply/leaves

# the triggers of the settings menu are only enabled while the menu is used
scoreboard players add @a[scores={timber_menu=1..}] timber_menu 1
execute as @a[scores={timber_menu=6000..}] run function timber:settings/disable_triggers


# reset
scoreboard players enable @a TimberToggle