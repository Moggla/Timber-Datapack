#> By default a sapling item stays an item: nothing is planted
# @environment timber_test:group_2
# @template timber_test:arena
# @timeout 400
# @skyaccess true

function timber_test:platform
summon minecraft:item ~10.5 ~0.5 ~10.5 {Item:{id:"minecraft:oak_sapling",count:1}}

# longer than the 2 seconds of the loop, three times over
await delay 7s
assert entity @e[type=minecraft:item,dx=39,dy=39,dz=39,nbt={Item:{id:"minecraft:oak_sapling"}}]
assert block ~10 ~ ~10 minecraft:air
