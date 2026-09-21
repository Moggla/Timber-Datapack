#> With slow chop on, leaves placed by a player still don't make a log stack a tree (the leaves are checked when the chop starts, as the player, not in the slow loop)
# @environment timber_test:slow_chop_on
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
function timber_test:count_logs {test:"settings_slow_chop_ignores_player_placed_leaves"}
function timber_test:player {name:"slow_placed_t",axe:"minecraft:iron_axe"}
function timber_test:mine {name:"slow_placed_t"}

# wait until the datapack has had its chance to act
# (await doesn't work inside a called function, so this block is repeated in every test)
await not block ~20 ~ ~20 #minecraft:logs
await delay 10t
await not entity @e[type=minecraft:marker,dx=39,dy=39,dz=39]

function timber_test:assert_only_mined_gone {test:"settings_slow_chop_ignores_player_placed_leaves"}
