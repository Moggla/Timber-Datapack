#> Mining the bottom log of a stack of logs (no leaves anywhere) does not chop it
# @environment timber_test:group_3
# @template timber_test:arena
# @timeout 200
# @skyaccess true

function timber_test:platform
# a column of 8 logs
fill ~20 ~0 ~20 ~20 ~7 ~20 minecraft:oak_log

function timber_test:count_logs {test:"not_chopped_log_pile"}
function timber_test:player {name:"neg_pile_t",axe:"minecraft:iron_axe"}
function timber_test:mine {name:"neg_pile_t"}

# wait until the datapack has had its chance to act
# (await doesn't work inside a called function, so this block is repeated in every test)
# 1. the base log is gone: the dummy hit the structure
# 2. five ticks pass: the datapack reacts to the mined block in the next tick or two
# 3. no marker is left in the arena
await not block ~20 ~ ~20 #minecraft:logs
await delay 5t
await not entity @e[type=minecraft:marker,dx=39,dy=39,dz=39]

function timber_test:assert_only_mined_gone {test:"not_chopped_log_pile"}
