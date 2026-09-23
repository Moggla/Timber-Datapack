# the scoreboard that counts the use of the axe
# An axe that was added before gets a new scoreboard. When the item doesn't exist (the mod is not installed) the scoreboard can't be
# made: then the axe is not added, otherwise the scan would look at a scoreboard that isn't there every tick.
# An unknown criterion is an error of the command when the macro is filled in, not when it runs: the command is in its own function,
# so that only its call fails and this function goes on.
$scoreboard objectives remove $(obj)
scoreboard players set #axe_ok timber 0
execute store success score #axe_ok timber run function timber:axes/make_objective with storage timber:axes build
execute if score #axe_ok timber matches 0 run return run function timber:axes/create_failed with storage timber:axes build
# enabled by default (the value stays when it is set already)
$execute unless score $(holder) timber = $(holder) timber run scoreboard players set $(holder) timber 1
# replaces an axe with the same item id
$data remove storage timber:axes list[{item:"$(item)"}]
data modify storage timber:axes entry set value {}
data modify storage timber:axes entry.item set from storage timber:axes build.item
data modify storage timber:axes entry.durability set from storage timber:axes build.durability
data modify storage timber:axes entry.label set from storage timber:axes build.label
data modify storage timber:axes entry.obj set from storage timber:axes build.obj
data modify storage timber:axes entry.holder set from storage timber:axes build.holder
# an axe that timber:axes/auto found: the settings menu shows the name of the item
execute if data storage timber:axes build{auto:1b} run function timber:axes/auto/key with storage timber:axes build
# custom axes (added outside of a load, for example typed in chat) survive the next load; timber:axes/init registers the vanilla
# axes and the ones of the function tag itself at every load, so those don't need to
execute if score #axes_loading timber matches 1 run data modify storage timber:axes entry.custom set value 0b
execute unless score #axes_loading timber matches 1 run data modify storage timber:axes entry.custom set value 1b
data modify storage timber:axes list append from storage timber:axes entry
data remove storage timber:axes build
data remove storage timber:axes entry
