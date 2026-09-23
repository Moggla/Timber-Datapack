#> With plant_sapling on, the farmland under an auto-planted sapling keeps its moisture
# @environment timber_test:plant_sapling_on
# @template timber_test:arena
# @timeout 400
# @skyaccess true

function timber_test:platform
setblock ~10 ~-1 ~10 minecraft:farmland[moisture=3]
summon minecraft:item ~10.5 ~0.5 ~10.5 {Item:{id:"minecraft:oak_sapling",count:1}}

await block ~10 ~ ~10 minecraft:oak_sapling
# the farmland is put back a few ticks after the planting
await delay 1s
assert block ~10 ~-1 ~10 minecraft:farmland[moisture=3]
