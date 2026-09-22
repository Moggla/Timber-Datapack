#> With plant_sapling on, planting a sapling from a stack of more than one plants it and removes just one from the stack (the loop checks every 2 seconds)
# @environment timber_test:plant_sapling_on
# @template timber_test:arena
# @timeout 400
# @skyaccess true

function timber_test:platform
summon minecraft:item ~10.5 ~0.5 ~10.5 {Item:{id:"minecraft:oak_sapling",count:5}}

# the sapling item falls on the dirt, the loop runs every 2 seconds
await block ~10 ~ ~10 minecraft:oak_sapling
assert entity @e[type=minecraft:item,dx=39,dy=39,dz=39,nbt={Item:{id:"minecraft:oak_sapling",count:4}}]
