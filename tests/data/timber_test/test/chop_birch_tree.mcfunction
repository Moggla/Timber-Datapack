#> Mining the bottom log of a birch tree with an axe chops down the whole tree
# @template timber_test:arena
# @timeout 200
# @skyaccess true

function timber_test:platform
function timber_test:tree {feature:"minecraft:birch"}
assert block ~8 ~ ~8 #minecraft:logs
assert block ~8 ~2 ~8 #minecraft:logs

# let the leaves settle before the tree is chopped
await delay 1s
function timber_test:count_d7

function timber_test:player {name:"birch_tester",axe:"minecraft:iron_axe"}
function timber_test:mine {name:"birch_tester"}

# wait until the datapack is done with the tree
# (await doesn't work inside a called function, so this block is repeated in every test)
# 1. the base log is gone: the dummy hit the tree
# 2. two ticks pass: the datapack reacts to the mined block in the next tick
# 3. no marker is left in the arena: chopping and slow chop delete their markers when they are done
await not block ~8 ~ ~8 #minecraft:logs
await delay 2t
await not entity @e[type=minecraft:marker,dx=19,dy=23,dz=19]

function timber_test:assert_no_tree {test:"chop_birch_tree"}
