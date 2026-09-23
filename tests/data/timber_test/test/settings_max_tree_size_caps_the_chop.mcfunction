#> A tree bigger than max_tree_size (3) is not processed any further: only the first logs go, the rest stays
# @environment timber_test:tiny_tree_size
# @template timber_test:arena
# @timeout 200
# @skyaccess true

function timber_test:platform
# a column of 8 logs with 6 natural leaves at its two lowest logs, so it is a tree for the datapack even if only the first logs are looked at
fill ~20 ~0 ~20 ~20 ~7 ~20 minecraft:oak_log
setblock ~21 ~1 ~20 minecraft:oak_leaves[distance=1,persistent=false]
setblock ~19 ~1 ~20 minecraft:oak_leaves[distance=1,persistent=false]
setblock ~20 ~1 ~21 minecraft:oak_leaves[distance=1,persistent=false]
setblock ~20 ~1 ~19 minecraft:oak_leaves[distance=1,persistent=false]
setblock ~21 ~2 ~20 minecraft:oak_leaves[distance=1,persistent=false]
setblock ~21 ~0 ~20 minecraft:oak_leaves[distance=1,persistent=false]

await delay 1s
function timber_test:count_logs {test:"settings_max_tree_size_caps_the_chop"}
function timber_test:player {name:"maxsize_t",axe:"minecraft:iron_axe"}
dummy maxsize_t mine ~20 ~0 ~20

# wait until the datapack has had its chance to act
# (await doesn't work inside a called function, so this block is repeated in every test)
# 1. the mined log is gone: the dummy hit the tree
# 2. five ticks pass: the datapack reacts to the mined block in the next tick or two
# 3. no marker is left in the arena
await not block ~20 ~0 ~20 #minecraft:logs
await delay 5t
await not entity @e[type=minecraft:marker,dx=39,dy=39,dz=39]

function timber_test:assert_logs_removed {test:"settings_max_tree_size_caps_the_chop",n:2}
