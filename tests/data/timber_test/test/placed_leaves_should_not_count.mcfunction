#> Six leaves placed by a player (persistent) next to a stack of logs: only natural leaves count (setting persistent is off), so it must not be chopped
# @environment timber_test:group_4
# @template timber_test:arena
# @timeout 200
# @skyaccess true

function timber_test:platform
# the rule is built for the default of 6 leaves
assert score min_leaves_found timber matches 6
# a column of 6 logs with 6 player placed leaves (persistent=true) next to it
fill ~20 ~0 ~20 ~20 ~5 ~20 minecraft:oak_log
setblock ~21 ~3 ~20 minecraft:oak_leaves[distance=1,persistent=true]
setblock ~19 ~3 ~20 minecraft:oak_leaves[distance=1,persistent=true]
setblock ~20 ~3 ~21 minecraft:oak_leaves[distance=1,persistent=true]
setblock ~20 ~3 ~19 minecraft:oak_leaves[distance=1,persistent=true]
setblock ~21 ~4 ~20 minecraft:oak_leaves[distance=1,persistent=true]
setblock ~19 ~4 ~20 minecraft:oak_leaves[distance=1,persistent=true]

function timber_test:count_logs {test:"placed_leaves_should_not_count"}
function timber_test:player {name:"placed_lv_t",axe:"minecraft:iron_axe"}
function timber_test:mine {name:"placed_lv_t"}

# wait until the datapack has had its chance to act
# (await doesn't work inside a called function, so this block is repeated in every test)
# 1. the base log is gone: the dummy hit the structure
# 2. five ticks pass: the datapack reacts to the mined block in the next tick or two
# 3. no marker is left in the arena
await not block ~20 ~ ~20 #minecraft:logs
await delay 5t
await not entity @e[type=minecraft:marker,dx=39,dy=39,dz=39]

function timber_test:assert_only_mined_gone {test:"placed_leaves_should_not_count"}
