#> By default the logs of a chopped tree drop on the ground, the inventory of the player stays empty of them
# @environment timber_test:group_1
# @template timber_test:arena
# @timeout 200
# @skyaccess true

function timber_test:platform
function timber_test:tree {feature:"minecraft:oak"}
assert block ~20 ~ ~20 #minecraft:logs

await delay 1s
function timber_test:player {name:"loot_off_t",axe:"minecraft:iron_axe"}
function timber_test:mine {name:"loot_off_t"}

# wait until the datapack has had its chance to act
# (await doesn't work inside a called function, so this block is repeated in every test)
# 1. the base log is gone: the dummy hit the tree
# 2. five ticks pass: the datapack reacts to the mined block in the next tick or two
# 3. no marker is left in the arena
await not block ~20 ~ ~20 #minecraft:logs
await delay 5t
await not entity @e[type=minecraft:marker,dx=39,dy=39,dz=39]

execute store success score #inv timber_test if items entity @e[type=minecraft:player,name=loot_off_t] container.* minecraft:oak_log
assert score #inv timber_test matches 0
assert entity @e[type=minecraft:item,dx=39,dy=39,dz=39,nbt={Item:{id:"minecraft:oak_log"}}]
