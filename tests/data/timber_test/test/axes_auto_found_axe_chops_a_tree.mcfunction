#> An axe of #minecraft:axes that nobody registered is found when it is in the hotbar, with the durability of the item, and chops a tree
# @environment timber_test:axes_auto
# @template timber_test:arena
# @timeout 400
# @skyaccess true

function timber_test:platform
function timber_test:tree {feature:"minecraft:oak"}
assert block ~20 ~ ~20 #minecraft:logs

await delay 1s
scoreboard objectives add timber_test dummy
function timber_test:count_d7 {test:"axes_auto_found_axe_chops_a_tree"}
function timber_test:player {name:"auto_axe_t",axe:"minecraft:iron_axe"}

# a vanilla axe is known already: the list stays at the 7 vanilla axes and the stick of the tests
await delay 5t
execute store result score #auto_n timber_test run data get storage timber:axes list
assert score #auto_n timber_test matches 8

# the blaze rod and the breeze rod are in #minecraft:axes (test datapack), nobody registered them.
# The blaze rod can take 40 and has taken 5 already, the breeze rod has no durability.
item replace entity @e[type=minecraft:player,name=auto_axe_t,limit=1] weapon.mainhand with minecraft:blaze_rod[minecraft:max_damage=40,minecraft:damage=5,minecraft:max_stack_size=1,minecraft:tool={rules:[{blocks:"#minecraft:logs",speed:6,correct_for_drops:true}],default_mining_speed:1,damage_per_block:1}]
item replace entity @e[type=minecraft:player,name=auto_axe_t,limit=1] hotbar.1 with minecraft:breeze_rod
await data storage timber:axes list[{item:"minecraft:blaze_rod"}]
await data storage timber:axes list[{item:"minecraft:breeze_rod"}]
assert data storage timber:axes list[{item:"minecraft:blaze_rod",durability:40,key:"item.minecraft.blaze_rod",custom:1b}]
assert data storage timber:axes list[{item:"minecraft:breeze_rod",durability:2147483647}]
execute store result score #auto_n timber_test run data get storage timber:axes list
assert score #auto_n timber_test matches 10

function timber_test:mine {name:"auto_axe_t"}

# wait until the datapack has had its chance to act
# (await doesn't work inside a called function, so this block is repeated in every test)
# 1. the base log is gone: the dummy hit the tree
# 2. five ticks pass: the datapack reacts to the mined block in the next tick or two
# 3. no marker is left in the arena
await not block ~20 ~ ~20 #minecraft:logs
await delay 5t
await not entity @e[type=minecraft:marker,dx=39,dy=39,dz=39]

function timber_test:assert_no_tree {test:"axes_auto_found_axe_chops_a_tree"}
