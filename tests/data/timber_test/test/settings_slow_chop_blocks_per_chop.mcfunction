#> With blocks_per_chop 20 the whole tree (about 60 blocks) is gone after 12 ticks
# @environment timber_test:slow_chop_batch
# @template timber_test:arena
# @timeout 600
# @skyaccess true

function timber_test:platform
function timber_test:tree {feature:"minecraft:oak"}
assert block ~20 ~ ~20 #minecraft:logs

await delay 1s
function timber_test:count_d7 {test:"settings_slow_chop_blocks_per_chop"}
function timber_test:player {name:"slowbat_t",axe:"minecraft:iron_axe"}
function timber_test:mine {name:"slowbat_t"}

# the base log is gone: the dummy hit the tree
await not block ~20 ~ ~20 #minecraft:logs
await delay 12t
# 60 blocks at 20 per tick: done by now
assert not entity @e[type=minecraft:marker,dx=39,dy=39,dz=39]

function timber_test:assert_no_tree {test:"settings_slow_chop_blocks_per_chop"}
