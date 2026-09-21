#> timber:api/add_axe replaces an axe that was added before, and an item id that is wrong or unknown adds nothing
# @environment timber_test:axes_api
# @timeout 100

scoreboard objectives add timber_test dummy

# 7 vanilla axes and the stick of the tests
execute store result score #n timber_test run data get storage timber:axes list
assert score #n timber_test matches 8

# the same axe again: still one
function timber:api/add_axe {item:"minecraft:stick",durability:30,label:"Test Stick"}
execute store result score #n timber_test run data get storage timber:axes list
assert score #n timber_test matches 8

# no colon in the item id
function timber:api/add_axe {item:"noColonHere",durability:100,label:"Broken"}
execute store result score #n timber_test run data get storage timber:axes list
assert score #n timber_test matches 8
execute store success score #left timber_test if data storage timber:axes build
assert score #left timber_test matches 0

# an item that doesn't exist (the mod is not installed): no scoreboard can be made, so nothing is added
function timber:api/add_axe {item:"supertools:emeraldaxe",durability:500,label:"Emerald Axe"}
execute store result score #n timber_test run data get storage timber:axes list
assert score #n timber_test matches 8
execute store success score #left timber_test if data storage timber:axes build
assert score #left timber_test matches 0

# a real item is added, with its scoreboard
function timber:api/add_axe {item:"minecraft:shears",durability:238,label:"Test Shears"}
execute store result score #n timber_test run data get storage timber:axes list
assert score #n timber_test matches 9
execute store success score #exists timber_test run scoreboard players add #probe timber_axe.minecraft.shears 0
assert score #exists timber_test matches 1

# added again with another durability: replaced, not doubled
function timber:api/add_axe {item:"minecraft:shears",durability:300,label:"Test Shears"}
execute store result score #n timber_test run data get storage timber:axes list
assert score #n timber_test matches 9
assert data storage timber:axes list[{item:"minecraft:shears",durability:300}]

# the names of an axe of a mod: namespace.name for the score that says if it is enabled, timber_axe.namespace.name for the scoreboard
data modify storage timber:axes build set value {ns:"supertools",path:"emeraldaxe"}
function timber:axes/name_modded with storage timber:axes build
function timber:axes/name_objective with storage timber:axes build
assert data storage timber:axes build{holder:"supertools.emeraldaxe",obj:"timber_axe.supertools.emeraldaxe"}
data remove storage timber:axes build
