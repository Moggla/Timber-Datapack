#> Mining a log with 3 leaves next to the trunk and 3 more 2 blocks away chops the whole tree (min_leaves_found is 6, leaves within 2 blocks count)
# @environment timber_test:group_5
# @template timber_test:arena
# @timeout 200
# @skyaccess true

function timber_test:platform
# the rule is built for the default of 6 leaves
assert score min_leaves_found timber matches 6
# a column of 6 logs with 3 leaves at its sides and 3 leaves 2 blocks away: 2 straight out from side leaves, 1 on a diagonal
# between two of them
fill ~20 ~0 ~20 ~20 ~5 ~20 minecraft:oak_log
setblock ~21 ~3 ~20 minecraft:oak_leaves[distance=1,persistent=false]
setblock ~19 ~3 ~20 minecraft:oak_leaves[distance=1,persistent=false]
setblock ~20 ~3 ~21 minecraft:oak_leaves[distance=1,persistent=false]
setblock ~22 ~3 ~20 minecraft:oak_leaves[distance=2,persistent=false]
setblock ~18 ~3 ~20 minecraft:oak_leaves[distance=2,persistent=false]
setblock ~21 ~3 ~21 minecraft:oak_leaves[distance=2,persistent=false]

function timber_test:count_d7 {test:"chopped_six_leaves_within_two_blocks"}

function timber_test:count_logs {test:"chopped_six_leaves_within_two_blocks"}
function timber_test:player {name:"pos6w_t",axe:"minecraft:iron_axe"}
function timber_test:mine {name:"pos6w_t"}

# wait until the datapack has had its chance to act
# (await doesn't work inside a called function, so this block is repeated in every test)
# 1. the base log is gone: the dummy hit the structure
# 2. five ticks pass: the datapack reacts to the mined block in the next tick or two
# 3. no marker is left in the arena
await not block ~20 ~ ~20 #minecraft:logs
await delay 5t
await not entity @e[type=minecraft:marker,dx=39,dy=39,dz=39]

function timber_test:assert_no_tree {test:"chopped_six_leaves_within_two_blocks"}
