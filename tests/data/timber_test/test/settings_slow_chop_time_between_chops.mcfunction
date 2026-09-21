#> With time_between_chops 10 a block goes every 10 ticks: after 40 ticks only a few are gone
# @environment timber_test:slow_chop_interval
# @template timber_test:arena
# @timeout 2000
# @skyaccess true

function timber_test:platform
function timber_test:tree {feature:"minecraft:oak"}
assert block ~20 ~ ~20 #minecraft:logs

await delay 1s
function timber_test:count_d7 {test:"settings_slow_chop_time_between_chops"}
function timber_test:player {name:"slowint_t",axe:"minecraft:iron_axe"}
function timber_test:mine {name:"slowint_t"}

# the base log is gone: the dummy hit the tree
await not block ~20 ~ ~20 #minecraft:logs
await delay 40t
assert entity @e[type=minecraft:marker,dx=39,dy=39,dz=39]
execute store result score #remaining timber_test run clone ~0 ~0 ~0 ~39 ~19 ~39 ~0 ~64 ~0 filtered #minecraft:leaves
fill ~0 ~64 ~0 ~39 ~83 ~39 minecraft:air
assert score #remaining timber_test matches 40..

# wait until the slow chop is done: no marker is left in the arena
# (await doesn't work inside a called function, so this block is repeated in every test)
await not entity @e[type=minecraft:marker,dx=39,dy=39,dz=39]

function timber_test:assert_no_tree {test:"settings_slow_chop_time_between_chops"}
