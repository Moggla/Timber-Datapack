#> A torch on a log of the chopped tree drops, a torch on a block next to the tree stays
# @environment timber_test:group_3
# @template timber_test:arena
# @timeout 200
# @skyaccess true

function timber_test:platform
function timber_test:tree {feature:"minecraft:oak"}
assert block ~20 ~1 ~20 #minecraft:logs
# torch on the trunk (facing points away from the block it hangs on)
setblock ~21 ~1 ~20 minecraft:wall_torch[facing=east]
# torch next to the trunk that hangs on another block
setblock ~20 ~1 ~18 minecraft:stone
setblock ~20 ~1 ~19 minecraft:wall_torch[facing=south]

await delay 1s
assert block ~21 ~1 ~20 minecraft:wall_torch
assert block ~20 ~1 ~19 minecraft:wall_torch
function timber_test:player {name:"torch_drop_t",axe:"minecraft:iron_axe"}
function timber_test:mine {name:"torch_drop_t"}

# wait until the datapack is done with the tree
# (await doesn't work inside a called function, so this block is repeated in every test)
await not block ~20 ~ ~20 #minecraft:logs
await delay 5t
await not entity @e[type=minecraft:marker,dx=39,dy=39,dz=39]

# the torch on the trunk dropped, nothing else did
assert block ~20 ~1 ~20 minecraft:air
assert block ~21 ~1 ~20 minecraft:air
scoreboard objectives add timber_test dummy
execute store result score #torch_drop timber_test if entity @e[type=minecraft:item,dx=39,dy=39,dz=39,nbt={Item:{id:"minecraft:torch",count:1}}]
assert score #torch_drop timber_test matches 1
# the torch on the stone is untouched
assert block ~20 ~1 ~19 minecraft:wall_torch[facing=south]
