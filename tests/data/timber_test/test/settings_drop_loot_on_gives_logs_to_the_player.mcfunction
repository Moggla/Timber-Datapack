#> With drop_loot on the logs of a chopped tree go into the inventory of the player, not on the ground
# @environment timber_test:drop_loot_on
# @template timber_test:arena
# @timeout 200
# @skyaccess true

function timber_test:platform
function timber_test:tree {feature:"minecraft:oak"}
assert block ~20 ~ ~20 #minecraft:logs

await delay 1s
function timber_test:player {name:"loot_on_t",axe:"minecraft:iron_axe"}
function timber_test:mine {name:"loot_on_t"}

# wait until the datapack has had its chance to act
# (await doesn't work inside a called function, so this block is repeated in every test)
# 1. the base log is gone: the dummy hit the tree
# 2. five ticks pass: the datapack reacts to the mined block in the next tick or two
# 3. no marker is left in the arena
await not block ~20 ~ ~20 #minecraft:logs
await delay 5t
await not entity @e[type=minecraft:marker,dx=39,dy=39,dz=39]

# the logs of the chop go straight into the inventory (the drop of the block the dummy mined itself is moved to the dummy, but a dummy picks nothing up)
scoreboard objectives add timber_test dummy
execute store result score #inv timber_test run clear @e[type=minecraft:player,name=loot_on_t,limit=1] minecraft:oak_log 0
assert score #inv timber_test matches 3..
