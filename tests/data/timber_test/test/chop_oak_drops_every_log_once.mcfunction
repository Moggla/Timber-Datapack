#> Every log of the chopped tree drops once: the drops of the destroy animation are removed, only the loot is left
# @environment timber_test:group_5
# @template timber_test:arena
# @timeout 200
# @skyaccess true

function timber_test:platform
function timber_test:tree {feature:"minecraft:oak"}
assert block ~20 ~ ~20 #minecraft:logs

await delay 1s
function timber_test:count_logs {test:"chop_oak_drops_every_log_once"}
function timber_test:player {name:"log_once_t",axe:"minecraft:iron_axe"}
function timber_test:mine {name:"log_once_t"}

# wait until the datapack is done with the tree
# (await doesn't work inside a called function, so this block is repeated in every test)
await not block ~20 ~ ~20 #minecraft:logs
await delay 5t
await not entity @e[type=minecraft:marker,dx=39,dy=39,dz=39]

# as many logs on the ground as the tree had (the one the dummy mined is one of them, items can be stacks)
scoreboard players set #log_once timber_test 0
execute as @e[type=minecraft:item,dx=39,dy=39,dz=39,nbt={Item:{id:"minecraft:oak_log"}}] store result score @s timber_test run data get entity @s Item.count
execute as @e[type=minecraft:item,dx=39,dy=39,dz=39,nbt={Item:{id:"minecraft:oak_log"}}] run scoreboard players operation #log_once timber_test += @s timber_test
assert score #log_once timber_test = #logs0_chop_oak_drops_every_log_once timber_test
