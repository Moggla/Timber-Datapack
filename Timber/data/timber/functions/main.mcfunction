# loop (not in minecraft:tick in order to stop it after uninstall)
schedule function timber:main 1t

# if any kind of axe is used
execute as @a[predicate=timber:used_axe,tag=!global.ignore] at @s run function timber:used_axe

# toggle timber datapack per player
execute as @a[scores={TimberToggle=1..},tag=!global.ignore] run function timber:settings/toggle/timber

# reset
scoreboard players enable @a TimberToggle