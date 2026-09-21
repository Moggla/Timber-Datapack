#> By default (chop_fungi off) a huge mushroom is not chopped: the stem above the mined block stays
# @environment timber_test:group_4
# @template timber_test:arena
# @timeout 200
# @skyaccess true

function timber_test:platform
setblock ~20 ~-1 ~20 minecraft:mycelium
function timber_test:tree {feature:"minecraft:huge_red_mushroom"}
assert block ~20 ~ ~20 minecraft:mushroom_stem

await delay 1s
function timber_test:player {name:"fg_off_mush_t",axe:"minecraft:iron_axe"}
function timber_test:mine {name:"fg_off_mush_t"}

# wait until the datapack has had its chance to act
# (await doesn't work inside a called function, so this block is repeated in every test)
await not block ~20 ~ ~20 minecraft:mushroom_stem
await delay 5t
await not entity @e[type=minecraft:marker,dx=39,dy=39,dz=39]

assert block ~20 ~2 ~20 minecraft:mushroom_stem
