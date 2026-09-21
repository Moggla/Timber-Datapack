#> Mining a log with only 4 leaves next to the trunk does not chop it (min_leaves_found is 5)
# @environment timber_test:group_1
# @template timber_test:arena
# @timeout 200
# @skyaccess true

function timber_test:platform
# the rule is built for the default of 5 leaves
assert score min_leaves_found timber matches 5
# a column of 6 logs with 4 leaves at its sides
fill ~20 ~0 ~20 ~20 ~5 ~20 minecraft:oak_log
setblock ~21 ~3 ~20 minecraft:oak_leaves[distance=1,persistent=false]
setblock ~19 ~3 ~20 minecraft:oak_leaves[distance=1,persistent=false]
setblock ~20 ~3 ~21 minecraft:oak_leaves[distance=1,persistent=false]
setblock ~20 ~3 ~19 minecraft:oak_leaves[distance=1,persistent=false]

function timber_test:count_logs {test:"not_chopped_four_leaves"}
function timber_test:player {name:"neg4_t",axe:"minecraft:iron_axe"}
function timber_test:mine {name:"neg4_t"}

# wait until the datapack has had its chance to act
# (await doesn't work inside a called function, so this block is repeated in every test)
# 1. the base log is gone: the dummy hit the structure
# 2. five ticks pass: the datapack reacts to the mined block in the next tick or two
# 3. no marker is left in the arena
await not block ~20 ~ ~20 #minecraft:logs
await delay 5t
await not entity @e[type=minecraft:marker,dx=39,dy=39,dz=39]

function timber_test:assert_only_mined_gone {test:"not_chopped_four_leaves"}
