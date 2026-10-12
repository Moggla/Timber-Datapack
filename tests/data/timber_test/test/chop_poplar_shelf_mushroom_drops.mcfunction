#> A shelf mushroom on a log of the chopped Poplar drops, a shelf mushroom on a block next to the tree stays (#42)
#> Poplar and shelf mushroom are new in 26.3, the overlay 101 replaces this test with an empty one
# @environment timber_test:group_2
# @template timber_test:arena
# @timeout 200
# @skyaccess true

function timber_test:platform
function timber_test:tree {feature:"minecraft:yellow_poplar"}
assert block ~20 ~1 ~20 minecraft:poplar_log
# shelf mushroom on the trunk (facing points away from the block it hangs on)
setblock ~21 ~1 ~20 minecraft:shelf_mushroom[facing=east]
# shelf mushroom next to the trunk that hangs on another block
setblock ~20 ~1 ~18 minecraft:stone
setblock ~20 ~1 ~19 minecraft:shelf_mushroom[facing=south]

await delay 1s
assert block ~21 ~1 ~20 minecraft:shelf_mushroom
assert block ~20 ~1 ~19 minecraft:shelf_mushroom
function timber_test:player {name:"shelf_drop_t",axe:"minecraft:iron_axe"}
function timber_test:mine {name:"shelf_drop_t"}

# wait until the datapack is done with the tree
# (await doesn't work inside a called function, so this block is repeated in every test)
await not block ~20 ~ ~20 #minecraft:logs
await delay 5t
await not entity @e[type=minecraft:marker,dx=39,dy=39,dz=39]

assert block ~20 ~1 ~20 minecraft:air
assert block ~21 ~1 ~20 minecraft:air
assert entity @e[type=minecraft:item,dx=39,dy=39,dz=39,nbt={Item:{id:"minecraft:shelf_mushroom"}}]
# the shelf mushroom on the stone is untouched
assert block ~20 ~1 ~19 minecraft:shelf_mushroom[facing=south]
