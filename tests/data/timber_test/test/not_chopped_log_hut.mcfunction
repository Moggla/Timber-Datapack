#> Mining a log of a hut built from logs (no leaves anywhere) does not chop it
# @environment timber_test:group_2
# @template timber_test:arena
# @timeout 200
# @skyaccess true

function timber_test:platform
# a hollow 5x5x4 box of logs, the corner log at ~20 ~ ~20 is mined
fill ~20 ~0 ~20 ~24 ~3 ~24 minecraft:oak_log hollow

function timber_test:count_logs {test:"not_chopped_log_hut"}
function timber_test:player {name:"neg_hut_t",axe:"minecraft:iron_axe"}
function timber_test:mine {name:"neg_hut_t"}

# wait until the datapack has had its chance to act
# (await doesn't work inside a called function, so this block is repeated in every test)
# 1. the base log is gone: the dummy hit the structure
# 2. five ticks pass: the datapack reacts to the mined block in the next tick or two
# 3. no marker is left in the arena
await not block ~20 ~ ~20 #minecraft:logs
await delay 5t
await not entity @e[type=minecraft:marker,dx=39,dy=39,dz=39]

function timber_test:assert_only_mined_gone {test:"not_chopped_log_hut"}
