#> With slow_chop on the tree is chopped block by block: after 10 ticks it is still going, in the end it is all gone
# @environment timber_test:slow_chop_on
# @template timber_test:arena
# @timeout 600
# @skyaccess true

function timber_test:platform
function timber_test:tree {feature:"minecraft:oak"}
assert block ~20 ~ ~20 #minecraft:logs

await delay 1s
function timber_test:count_d7 {test:"settings_slow_chop_removes_blocks_gradually"}
function timber_test:player {name:"slow_t",axe:"minecraft:iron_axe"}
function timber_test:mine {name:"slow_t"}

# the base log is gone: the dummy hit the tree
await not block ~20 ~ ~20 #minecraft:logs
await delay 10t
# still going: markers of the blocks that are still to go, and most of the leaves are there
assert entity @e[type=minecraft:marker,dx=39,dy=39,dz=39]
execute store result score #remaining timber_test run clone ~0 ~0 ~0 ~39 ~19 ~39 ~0 ~64 ~0 filtered #minecraft:leaves
fill ~0 ~64 ~0 ~39 ~83 ~39 minecraft:air
assert score #remaining timber_test matches 30..

# wait until the slow chop is done: no marker is left in the arena
# (await doesn't work inside a called function, so this block is repeated in every test)
await not entity @e[type=minecraft:marker,dx=39,dy=39,dz=39]

function timber_test:assert_no_tree {test:"settings_slow_chop_removes_blocks_gradually"}
