#> Mining the bottom log of a 2x2 jungle tree with an axe chops down the whole tree
# @environment timber_test:group_5
# @template timber_test:arena
# @timeout 200
# @skyaccess true

function timber_test:platform
function timber_test:tree {feature:"minecraft:mega_jungle_tree"}
assert block ~20 ~ ~20 #minecraft:logs

# let the leaves settle before the tree is chopped
await delay 1s
function timber_test:count_d7 {test:"chop_mega_jungle_tree"}

function timber_test:player {name:"mega_jungle_t",axe:"minecraft:iron_axe"}
function timber_test:mine {name:"mega_jungle_t"}

# wait until the datapack is done with the tree
# (await doesn't work inside a called function, so this block is repeated in every test)
# 1. the base log is gone: the dummy hit the tree
# 2. two ticks pass: the datapack reacts to the mined block in the next tick
# 3. no marker is left in the arena: chopping and slow chop delete their markers when they are done
await not block ~20 ~ ~20 #minecraft:logs
await delay 2t
await not entity @e[type=minecraft:marker,dx=39,dy=39,dz=39]

# big crown: logs have to be gone, leaves that are left only warn (see assert_no_logs_warn_leaves)
function timber_test:assert_no_logs_warn_leaves {test:"chop_mega_jungle_tree"}
