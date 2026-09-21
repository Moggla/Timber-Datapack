#> The iron axe chops a tree by default
# @environment timber_test:group_3
# @template timber_test:arena
# @timeout 200
# @skyaccess true

function timber_test:platform
function timber_test:tree {feature:"minecraft:oak"}
assert block ~20 ~ ~20 #minecraft:logs
assert block ~20 ~2 ~20 #minecraft:logs

await delay 1s
function timber_test:count_d7 {test:"settings_axe_iron_chops"}
function timber_test:player {name:"ax_iron_t",axe:"minecraft:iron_axe"}
dummy ax_iron_t mine ~20 ~0 ~20

# wait until the datapack has had its chance to act
# (await doesn't work inside a called function, so this block is repeated in every test)
# 1. the mined log is gone: the dummy hit the tree
# 2. five ticks pass: the datapack reacts to the mined block in the next tick or two
# 3. no marker is left in the arena
await not block ~20 ~0 ~20 #minecraft:logs
await delay 5t
await not entity @e[type=minecraft:marker,dx=39,dy=39,dz=39]

function timber_test:assert_no_tree {test:"settings_axe_iron_chops"}
