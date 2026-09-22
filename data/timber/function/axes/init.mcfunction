# Sets up the axes at every load: forgets the auto-registered axes of the last load, registers the vanilla axes, then asks the
# other datapacks. Their functions are in the function tag #timber:register_axes, so the order of the datapacks doesn't matter.
# An axe that was added outside of a load (typed in chat, for example) is not forgotten, nothing would register it again.

# scoreboards of axes that are not registered any more (and of the old version, where they were fixed), keeps the custom ones
data modify storage timber:axes keep set value []
data modify storage timber:axes queue set from storage timber:axes list
function timber:axes/reset_next
data modify storage timber:axes list set from storage timber:axes keep
data remove storage timber:axes keep
scoreboard objectives remove timber_w_axe
scoreboard objectives remove timber_s_axe
scoreboard objectives remove timber_c_axe
scoreboard objectives remove timber_i_axe
scoreboard objectives remove timber_g_axe
scoreboard objectives remove timber_d_axe
scoreboard objectives remove timber_n_axe

# vanilla axes, in the order of the settings menu (axes registered while this score is 1 count as auto-registered, not custom)
scoreboard players set #axes_loading timber 1
function timber:api/add_axe {item:"minecraft:wooden_axe",durability:59,label:"Wooden Axe"}
function timber:api/add_axe {item:"minecraft:stone_axe",durability:131,label:"Stone Axe"}
function timber:api/add_axe {item:"minecraft:copper_axe",durability:190,label:"Copper Axe"}
function timber:api/add_axe {item:"minecraft:iron_axe",durability:250,label:"Iron Axe"}
function timber:api/add_axe {item:"minecraft:golden_axe",durability:32,label:"Golden Axe"}
function timber:api/add_axe {item:"minecraft:diamond_axe",durability:1561,label:"Diamond Axe"}
function timber:api/add_axe {item:"minecraft:netherite_axe",durability:2031,label:"Netherite Axe"}

# axes of other datapacks
function #timber:register_axes
scoreboard players set #axes_loading timber 0
