#> Mining a log with 2 leaves next to the trunk, 2 more 2 blocks away and 1 that is 3 blocks away does not chop it (min_leaves_found is 5, only leaves within 2 blocks count)
# @environment timber_test:group_5
# @template timber_test:arena
# @timeout 200
# @skyaccess true

function timber_test:platform
# the rule is built for the default of 5 leaves
assert score min_leaves_found timber matches 5
# a column of 6 logs with 2 leaves at its sides, 1 more leaf behind each of them (2 blocks away) and 1 leaf 3 blocks away
fill ~20 ~0 ~20 ~20 ~5 ~20 minecraft:oak_log
setblock ~21 ~3 ~20 minecraft:oak_leaves[distance=1,persistent=false]
setblock ~22 ~3 ~20 minecraft:oak_leaves[distance=2,persistent=false]
setblock ~23 ~3 ~20 minecraft:oak_leaves[distance=3,persistent=false]
setblock ~19 ~3 ~20 minecraft:oak_leaves[distance=1,persistent=false]
setblock ~18 ~3 ~20 minecraft:oak_leaves[distance=2,persistent=false]

function timber_test:count_logs {test:"not_chopped_four_leaves_within_two_blocks"}
function timber_test:player {name:"neg4w_t",axe:"minecraft:iron_axe"}
function timber_test:mine {name:"neg4w_t"}

# wait until the datapack has had its chance to act
# (await doesn't work inside a called function, so this block is repeated in every test)
# 1. the base log is gone: the dummy hit the structure
# 2. five ticks pass: the datapack reacts to the mined block in the next tick or two
# 3. no marker is left in the arena
await not block ~20 ~ ~20 #minecraft:logs
await delay 5t
await not entity @e[type=minecraft:marker,dx=39,dy=39,dz=39]

function timber_test:assert_only_mined_gone {test:"not_chopped_four_leaves_within_two_blocks"}
