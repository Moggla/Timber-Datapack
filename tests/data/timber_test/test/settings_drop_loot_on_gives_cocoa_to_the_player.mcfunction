#> With drop_loot on the beans of cocoa on the chopped tree go into the inventory of the player, not on the ground
# @environment timber_test:drop_loot_on
# @template timber_test:arena
# @timeout 200
# @skyaccess true

function timber_test:platform
# a jungle tree without cocoa and vines of its own
function timber_test:tree {feature:"minecraft:jungle_tree_no_vine"}
assert block ~20 ~1 ~20 minecraft:jungle_log
setblock ~21 ~1 ~20 minecraft:cocoa[age=2,facing=west]

await delay 1s
assert block ~21 ~1 ~20 minecraft:cocoa
function timber_test:player {name:"loot_cocoa_t",axe:"minecraft:iron_axe"}
function timber_test:mine {name:"loot_cocoa_t"}

# wait until the datapack is done with the tree
# (await doesn't work inside a called function, so this block is repeated in every test)
await not block ~20 ~ ~20 #minecraft:logs
await delay 5t
await not entity @e[type=minecraft:marker,dx=39,dy=39,dz=39]

# the cocoa is gone, its beans were moved to the dummy, which picks them up half a second later
assert block ~21 ~1 ~20 minecraft:air
await not entity @e[type=minecraft:item,dx=39,dy=39,dz=39,nbt={Item:{id:"minecraft:cocoa_beans"}}]
scoreboard objectives add timber_test dummy
execute store result score #loot_cocoa timber_test run clear @e[type=minecraft:player,name=loot_cocoa_t,limit=1] minecraft:cocoa_beans 0
assert score #loot_cocoa timber_test matches 3
