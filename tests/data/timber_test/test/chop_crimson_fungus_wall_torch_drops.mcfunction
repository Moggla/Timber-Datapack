#> A torch on a stem of the chopped crimson fungus drops (chop_fungi is on)
# @environment timber_test:chop_fungi_on
# @template timber_test:arena
# @timeout 400
# @skyaccess true

function timber_test:platform
# nether fungi only grow on nylium, without it place feature fails without a message
setblock ~20 ~-1 ~20 minecraft:crimson_nylium
function timber_test:tree {feature:"minecraft:crimson_fungus"}
assert block ~20 ~1 ~20 minecraft:crimson_stem
# torch on the stem (facing points away from the block it hangs on)
setblock ~21 ~1 ~20 minecraft:wall_torch[facing=east]

await delay 1s
assert block ~21 ~1 ~20 minecraft:wall_torch
function timber_test:player {name:"torch_stem_t",axe:"minecraft:iron_axe"}
function timber_test:mine {name:"torch_stem_t"}

# wait until the datapack is done with the fungus
# (await doesn't work inside a called function, so this block is repeated in every test)
await not block ~20 ~ ~20 #minecraft:logs
await delay 5t
await not entity @e[type=minecraft:marker,dx=39,dy=39,dz=39]

assert block ~20 ~1 ~20 minecraft:air
assert block ~21 ~1 ~20 minecraft:air
scoreboard objectives add timber_test dummy
execute store result score #torch_stem timber_test if entity @e[type=minecraft:item,dx=39,dy=39,dz=39,nbt={Item:{id:"minecraft:torch",count:1}}]
assert score #torch_stem timber_test matches 1
