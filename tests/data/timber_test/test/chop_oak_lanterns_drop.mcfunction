#> Lanterns on top of and under a log of the chopped tree drop
# @environment timber_test:group_5
# @template timber_test:arena
# @timeout 200
# @skyaccess true

function timber_test:platform
function timber_test:tree {feature:"minecraft:oak"}
assert block ~20 ~2 ~20 #minecraft:logs
# a log at the trunk as a branch, one lantern stands on it, one hangs under it
setblock ~21 ~2 ~20 minecraft:oak_log
setblock ~21 ~3 ~20 minecraft:lantern[hanging=false]
setblock ~21 ~1 ~20 minecraft:lantern[hanging=true]

await delay 1s
assert block ~21 ~3 ~20 minecraft:lantern
assert block ~21 ~1 ~20 minecraft:lantern
function timber_test:player {name:"lantern_drop_t",axe:"minecraft:iron_axe"}
function timber_test:mine {name:"lantern_drop_t"}

# wait until the datapack is done with the tree
# (await doesn't work inside a called function, so this block is repeated in every test)
await not block ~20 ~ ~20 #minecraft:logs
await delay 5t
await not entity @e[type=minecraft:marker,dx=39,dy=39,dz=39]

# the branch is gone, both lanterns dropped (two items, or one stack of two)
assert block ~21 ~2 ~20 minecraft:air
assert block ~21 ~3 ~20 minecraft:air
assert block ~21 ~1 ~20 minecraft:air
scoreboard objectives add timber_test dummy
scoreboard players set #lantern_drop timber_test 0
execute as @e[type=minecraft:item,dx=39,dy=39,dz=39,nbt={Item:{id:"minecraft:lantern"}}] store result score @s timber_test run data get entity @s Item.count
execute as @e[type=minecraft:item,dx=39,dy=39,dz=39,nbt={Item:{id:"minecraft:lantern"}}] run scoreboard players operation #lantern_drop timber_test += @s timber_test
assert score #lantern_drop timber_test matches 2
