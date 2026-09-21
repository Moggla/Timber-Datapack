#> With stop_chopping on a tree is chopped only as far as the axe lasts: logs stay
# @environment timber_test:stop_chopping_on
# @template timber_test:arena
# @timeout 200
# @skyaccess true

function timber_test:platform
function timber_test:tree {feature:"minecraft:oak"}
assert block ~20 ~ ~20 #minecraft:logs

await delay 1s
function timber_test:count_logs {test:"settings_stop_chopping_on_stops_with_a_worn_axe"}
function timber_test:player {name:"worn_on_t",axe:"minecraft:iron_axe"}
item replace entity @e[type=minecraft:player,name=worn_on_t,limit=1] weapon.mainhand with minecraft:iron_axe[minecraft:damage=248]
function timber_test:mine {name:"worn_on_t"}

# wait until the datapack has had its chance to act
# (await doesn't work inside a called function, so this block is repeated in every test)
# 1. the base log is gone: the dummy hit the tree
# 2. five ticks pass: the datapack reacts to the mined block in the next tick or two
# 3. no marker is left in the arena
await not block ~20 ~ ~20 #minecraft:logs
await delay 5t
await not entity @e[type=minecraft:marker,dx=39,dy=39,dz=39]

# the axe can take about two more blocks: the chop stops, some logs are left (a full oak has 4 to 6)
function timber_test:assert_logs_left {n:"1.."}
