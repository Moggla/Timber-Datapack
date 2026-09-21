#> By default chopping a mangrove also removes its roots
# @template timber_test:arena
# @timeout 200
# @skyaccess true

function timber_test:platform
# a mangrove: 6 logs from height 1 on, 6 roots (three sides at height 1 and below them), 5 natural leaves. The dummy stands on the fourth side
fill ~20 ~1 ~20 ~20 ~6 ~20 minecraft:mangrove_log
setblock ~21 ~1 ~20 minecraft:mangrove_roots
setblock ~20 ~1 ~21 minecraft:mangrove_roots
setblock ~20 ~1 ~19 minecraft:mangrove_roots
setblock ~21 ~0 ~20 minecraft:mangrove_roots
setblock ~20 ~0 ~21 minecraft:mangrove_roots
setblock ~20 ~0 ~19 minecraft:mangrove_roots
setblock ~21 ~4 ~20 minecraft:mangrove_leaves[distance=1,persistent=false]
setblock ~19 ~4 ~20 minecraft:mangrove_leaves[distance=1,persistent=false]
setblock ~20 ~4 ~21 minecraft:mangrove_leaves[distance=1,persistent=false]
setblock ~20 ~4 ~19 minecraft:mangrove_leaves[distance=1,persistent=false]
setblock ~20 ~7 ~20 minecraft:mangrove_leaves[distance=1,persistent=false]

await delay 1s
function timber_test:count_d7 {test:"settings_destroy_roots_default_removes_roots"}
function timber_test:player {name:"roots_def_t",axe:"minecraft:iron_axe"}
dummy roots_def_t mine ~20 ~1 ~20

# wait until the datapack has had its chance to act
# (await doesn't work inside a called function, so this block is repeated in every test)
# 1. the mined block is gone: the dummy hit the tree
# 2. five ticks pass: the datapack reacts to the mined block in the next tick or two
# 3. no marker is left in the arena
await not block ~20 ~1 ~20 minecraft:mangrove_log
await delay 5t
await not entity @e[type=minecraft:marker,dx=39,dy=39,dz=39]

function timber_test:assert_no_roots
function timber_test:assert_no_tree {test:"settings_destroy_roots_default_removes_roots"}
