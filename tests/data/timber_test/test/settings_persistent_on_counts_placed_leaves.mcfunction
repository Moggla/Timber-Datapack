#> With persistent on leaves placed by a player count: a log stack with 5 of them is chopped
# @environment timber_test:persistent_on
# @template timber_test:arena
# @timeout 200
# @skyaccess true

function timber_test:platform
# a column of 6 logs with 5 leaves placed by a player (persistent=true)
fill ~20 ~0 ~20 ~20 ~5 ~20 minecraft:oak_log
setblock ~21 ~3 ~20 minecraft:oak_leaves[distance=1,persistent=true]
setblock ~19 ~3 ~20 minecraft:oak_leaves[distance=1,persistent=true]
setblock ~20 ~3 ~21 minecraft:oak_leaves[distance=1,persistent=true]
setblock ~20 ~3 ~19 minecraft:oak_leaves[distance=1,persistent=true]
setblock ~21 ~4 ~20 minecraft:oak_leaves[distance=1,persistent=true]

await delay 1s
function timber_test:count_d7 {test:"settings_persistent_on_counts_placed_leaves"}
function timber_test:player {name:"persist_t",axe:"minecraft:iron_axe"}
dummy persist_t mine ~20 ~0 ~20

# wait until the datapack has had its chance to act
# (await doesn't work inside a called function, so this block is repeated in every test)
# 1. the mined log is gone: the dummy hit the tree
# 2. five ticks pass: the datapack reacts to the mined block in the next tick or two
# 3. no marker is left in the arena
await not block ~20 ~0 ~20 #minecraft:logs
await delay 5t
await not entity @e[type=minecraft:marker,dx=39,dy=39,dz=39]

function timber_test:assert_no_tree {test:"settings_persistent_on_counts_placed_leaves"}
