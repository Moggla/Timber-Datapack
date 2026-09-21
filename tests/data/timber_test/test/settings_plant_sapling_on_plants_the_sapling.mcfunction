#> With plant_sapling on a sapling item that lies on the ground is planted (the loop checks every 2 seconds)
# @environment timber_test:plant_sapling_on
# @template timber_test:arena
# @timeout 400
# @skyaccess true

function timber_test:platform
summon minecraft:item ~10.5 ~0.5 ~10.5 {Item:{id:"minecraft:oak_sapling",count:1}}

# the sapling item falls on the dirt, the loop runs every 2 seconds
await block ~10 ~ ~10 minecraft:oak_sapling
