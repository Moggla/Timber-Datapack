#> By default (standing on, sneaking off) a sneaking player doesn't chop
# @environment timber_test:group_3
# @template timber_test:arena
# @timeout 200
# @skyaccess true

function timber_test:platform
# a column of 6 logs with 6 natural leaves from height 3 on (a random oak can have leaves right above the dummy, then it can't duck)
fill ~20 ~0 ~20 ~20 ~5 ~20 minecraft:oak_log
setblock ~21 ~3 ~20 minecraft:oak_leaves[distance=1,persistent=false]
setblock ~19 ~3 ~20 minecraft:oak_leaves[distance=1,persistent=false]
setblock ~20 ~3 ~21 minecraft:oak_leaves[distance=1,persistent=false]
setblock ~20 ~3 ~19 minecraft:oak_leaves[distance=1,persistent=false]
setblock ~21 ~4 ~20 minecraft:oak_leaves[distance=1,persistent=false]
setblock ~19 ~4 ~20 minecraft:oak_leaves[distance=1,persistent=false]

await delay 1s
function timber_test:count_logs {test:"settings_sneaking_default_no_chop"}
function timber_test:player {name:"sneak_def_t",axe:"minecraft:iron_axe"}
dummy sneak_def_t sneak true
# the dummy counts as sneaking a tick or more after the command: wait for it
await entity @e[type=minecraft:player,name=sneak_def_t,predicate=timber:sneaking]
dummy sneak_def_t mine ~20 ~0 ~20

# wait until the datapack has had its chance to act
# (await doesn't work inside a called function, so this block is repeated in every test)
# 1. the mined log is gone: the dummy hit the tree
# 2. five ticks pass: the datapack reacts to the mined block in the next tick or two
# 3. no marker is left in the arena
await not block ~20 ~0 ~20 #minecraft:logs
await delay 5t
await not entity @e[type=minecraft:marker,dx=39,dy=39,dz=39]

function timber_test:assert_only_mined_gone {test:"settings_sneaking_default_no_chop"}
