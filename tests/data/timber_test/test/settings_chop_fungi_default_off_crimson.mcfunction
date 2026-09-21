#> By default (chop_fungi off) a crimson fungus is not chopped
# @template timber_test:arena
# @timeout 200
# @skyaccess true

function timber_test:platform
setblock ~20 ~-1 ~20 minecraft:crimson_nylium
function timber_test:tree {feature:"minecraft:crimson_fungus"}
assert block ~20 ~ ~20 #minecraft:logs

await delay 1s
function timber_test:count_logs {test:"settings_chop_fungi_default_off_crimson"}
function timber_test:player {name:"fg_off_nether_t",axe:"minecraft:iron_axe"}
function timber_test:mine {name:"fg_off_nether_t"}

# wait until the datapack has had its chance to act
# (await doesn't work inside a called function, so this block is repeated in every test)
await not block ~20 ~ ~20 #minecraft:logs
await delay 5t
await not entity @e[type=minecraft:marker,dx=39,dy=39,dz=39]

function timber_test:assert_only_mined_gone {test:"settings_chop_fungi_default_off_crimson"}
