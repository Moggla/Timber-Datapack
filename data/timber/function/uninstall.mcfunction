# stop main functions and everything else that reschedules itself
schedule clear timber:main
schedule clear timber:autoplant/loop
schedule clear timber:autoplant/mud_fix
schedule clear timber:settings/reset_gamerule
schedule clear timber:slow_chop/loop
schedule clear timber:utils/check_server
schedule clear timber:utils/reset

# remove stored data
data remove storage timber:settings dialog
data remove storage timber:slow_chop blocks_per_chop
data remove storage timber:slow_chop time_between_chops
data remove storage timber:max_command_sequence_length value

# remove the scoreboards of the axes and what is stored for them
function timber:axes/uninstall

# remove scoreboards
scoreboard objectives remove timber
scoreboard objectives remove TimberToggle
scoreboard objectives remove TimberSettings
scoreboard objectives remove TimberSetBlocks
scoreboard objectives remove TimberSetTicks
scoreboard objectives remove TimberSetTreeSize
scoreboard objectives remove TimberSetLeaves
scoreboard objectives remove timber_menu
scoreboard objectives remove timber_disabled
scoreboard objectives remove timber_persistent

# remove markers
kill @e[type=minecraft:marker,tag=timber_slow_chop]
kill @e[type=minecraft:marker,tag=timber_destroy]
kill @e[type=minecraft:armor_stand,tag=timber_tool]
