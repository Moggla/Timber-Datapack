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

# leaves are checked only after the chop had time to finish
await delay 2s
function timber_test:assert_no_tree {test:"chop_birch_tree"}
