#> Cocoa on a log of the chopped tree drops its beans, cocoa on a log next to the tree stays (#42)
# @environment timber_test:group_2
# @template timber_test:arena
# @timeout 200
# @skyaccess true

function timber_test:platform
# a jungle tree without cocoa and vines of its own
function timber_test:tree {feature:"minecraft:jungle_tree_no_vine"}
assert block ~20 ~1 ~20 minecraft:jungle_log
# ripe cocoa on the trunk (facing points at the log it hangs on)
setblock ~21 ~1 ~20 minecraft:cocoa[age=2,facing=west]
# cocoa next to the trunk that hangs on another log, 2 blocks away from the trunk that log is no part of the tree
setblock ~20 ~1 ~18 minecraft:jungle_log
setblock ~20 ~1 ~19 minecraft:cocoa[age=2,facing=north]

await delay 1s
assert block ~21 ~1 ~20 minecraft:cocoa
assert block ~20 ~1 ~19 minecraft:cocoa
function timber_test:player {name:"cocoa_drop_t",axe:"minecraft:iron_axe"}
function timber_test:mine {name:"cocoa_drop_t"}

# wait until the datapack is done with the tree
# (await doesn't work inside a called function, so this block is repeated in every test)
await not block ~20 ~ ~20 #minecraft:logs
await delay 5t
await not entity @e[type=minecraft:marker,dx=39,dy=39,dz=39]

# the cocoa on the trunk dropped its 3 beans, nothing else did
assert block ~20 ~1 ~20 minecraft:air
assert block ~21 ~1 ~20 minecraft:air
scoreboard objectives add timber_test dummy
execute store result score #cocoa_drop timber_test if entity @e[type=minecraft:item,dx=39,dy=39,dz=39,nbt={Item:{id:"minecraft:cocoa_beans"}}]
assert score #cocoa_drop timber_test matches 1
execute store result score #cocoa_drop timber_test run data get entity @e[type=minecraft:item,dx=39,dy=39,dz=39,nbt={Item:{id:"minecraft:cocoa_beans"}},limit=1] Item.count
assert score #cocoa_drop timber_test matches 3
# the cocoa on the other log is untouched
assert block ~20 ~1 ~18 minecraft:jungle_log
assert block ~20 ~1 ~19 minecraft:cocoa[age=2,facing=north]
