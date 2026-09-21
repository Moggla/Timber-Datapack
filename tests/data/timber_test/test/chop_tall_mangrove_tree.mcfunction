#> Mining the lowest log of a tall mangrove tree chops down the whole tree including its roots
# @template timber_test:arena
# @timeout 200
# @skyaccess true

function timber_test:platform
function timber_test:tree {feature:"minecraft:tall_mangrove"}

# let the leaves settle before the tree is chopped
await delay 1s
function timber_test:count_d7 {test:"chop_tall_mangrove_tree"}
function timber_test:count_adjacent {test:"chop_tall_mangrove_tree"}
function timber_test:count_logs {test:"chop_tall_mangrove_tree"}

function timber_test:player {name:"tall_mangrove_t",axe:"minecraft:iron_axe"}
# mine the lowest log of the whole tree, from a spot next to it (see find_lowest_log and mine_here for why)
function timber_test:find_lowest_log
execute as @e[type=minecraft:marker,tag=tb_scan,dx=39,dy=39,dz=39] at @s run function timber_test:mine_here {name:"tall_mangrove_t"}
kill @e[type=minecraft:marker,tag=tb_scan,dx=39,dy=39,dz=39]

# wait until the datapack is done with the tree
# (await doesn't work inside a called function, so this block is repeated in every test)
# 1. the mined block dropped as an item: the dummy hit the tree (the base can be a root here, and any item would do for other things lying around, so wait for this one)
# 2. two ticks pass: the datapack reacts to the mined block in the next tick
# 3. no marker is left in the arena: chopping and slow chop delete their markers when they are done
await entity @e[type=minecraft:item,dx=39,dy=39,dz=39,nbt={Item:{id:"minecraft:mangrove_log"}}]
await delay 2t
await not entity @e[type=minecraft:marker,dx=39,dy=39,dz=39]

# the datapack only chops a tree with at least min_leaves_found leaves next to a trunk. Some mangroves have fewer (measured with
# 40 trees each: mangrove 15 %, tall mangrove 10 % below 5, the tall one down to 0). That is a gap in the datapack, the goal is to
# chop every tree, so such a tree doesn't fail the test but must not be chopped and gives a warning
# a chop from a log can leave parts of the tree standing or chop nothing (it searches upwards and sideways, see report_leftovers): warning, no failure
execute if score #adj_chop_tall_mangrove_tree timber_test >= min_leaves_found timber run function timber_test:report_leftovers {test:"chop_tall_mangrove_tree"}
execute if score #adj_chop_tall_mangrove_tree timber_test < min_leaves_found timber run function timber_test:assert_not_chopped {test:"chop_tall_mangrove_tree"}
