#> A tree with 13 leaves within 2 blocks of its trunk: min_leaves_found 14 doesn't chop it
#> (An oak can't be used here: it has 13 leaves next to its trunk, but 33 to 37 within 2 blocks, a random number.)
# @environment timber_test:min_leaves_14
# @template timber_test:arena
# @timeout 200
# @skyaccess true

function timber_test:platform
# a column of 6 logs with 5 leaves next to it (4 at its sides, one on top) and 8 leaves 2 blocks away: 4 straight out from the side
# leaves, 4 on the diagonals between them
fill ~20 ~0 ~20 ~20 ~5 ~20 minecraft:oak_log
setblock ~21 ~3 ~20 minecraft:oak_leaves[distance=1,persistent=false]
setblock ~19 ~3 ~20 minecraft:oak_leaves[distance=1,persistent=false]
setblock ~20 ~3 ~21 minecraft:oak_leaves[distance=1,persistent=false]
setblock ~20 ~3 ~19 minecraft:oak_leaves[distance=1,persistent=false]
setblock ~20 ~6 ~20 minecraft:oak_leaves[distance=1,persistent=false]
setblock ~22 ~3 ~20 minecraft:oak_leaves[distance=2,persistent=false]
setblock ~18 ~3 ~20 minecraft:oak_leaves[distance=2,persistent=false]
setblock ~20 ~3 ~22 minecraft:oak_leaves[distance=2,persistent=false]
setblock ~20 ~3 ~18 minecraft:oak_leaves[distance=2,persistent=false]
setblock ~21 ~3 ~21 minecraft:oak_leaves[distance=2,persistent=false]
setblock ~21 ~3 ~19 minecraft:oak_leaves[distance=2,persistent=false]
setblock ~19 ~3 ~21 minecraft:oak_leaves[distance=2,persistent=false]
setblock ~19 ~3 ~19 minecraft:oak_leaves[distance=2,persistent=false]

function timber_test:count_logs {test:"settings_min_leaves_14_keeps_13_leaves"}
function timber_test:player {name:"minl14_t",axe:"minecraft:iron_axe"}
function timber_test:mine {name:"minl14_t"}

# wait until the datapack has had its chance to act
# (await doesn't work inside a called function, so this block is repeated in every test)
# 1. the base log is gone: the dummy hit the structure
# 2. five ticks pass: the datapack reacts to the mined block in the next tick or two
# 3. no marker is left in the arena
await not block ~20 ~ ~20 #minecraft:logs
await delay 5t
await not entity @e[type=minecraft:marker,dx=39,dy=39,dz=39]

function timber_test:assert_only_mined_gone {test:"settings_min_leaves_14_keeps_13_leaves"}
