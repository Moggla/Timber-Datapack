#> With require_full_durability on, a tree the axe can't fully survive is left untouched (only the mined block is gone, vanilla takes 1)
# @environment timber_test:require_full_durability_on
# @template timber_test:arena
# @timeout 200
# @skyaccess true

function timber_test:platform
function timber_test:tree {feature:"minecraft:oak"}
assert block ~20 ~ ~20 #minecraft:logs

await delay 1s
function timber_test:player {name:"reqfull_t",axe:"minecraft:iron_axe"}
item replace entity @e[type=minecraft:player,name=reqfull_t,limit=1] weapon.mainhand with minecraft:iron_axe[minecraft:damage=248]
function timber_test:mine {name:"reqfull_t"}

# wait until the datapack has had its chance to act
# (await doesn't work inside a called function, so this block is repeated in every test)
# 1. the base log is gone: the dummy hit the tree
# 2. five ticks pass: the datapack reacts to the mined block in the next tick or two
# 3. no marker is left in the arena
await not block ~20 ~ ~20 #minecraft:logs
await delay 5t
await not entity @e[type=minecraft:marker,dx=39,dy=39,dz=39]

# the rest of the tree stays: nothing beyond the mined block was chopped
function timber_test:assert_logs_left {n:"1.."}

# only the vanilla durability loss from the mined block was applied, no extra wear
scoreboard objectives add timber_test dummy
scoreboard players set #dmg timber_test 0
execute store result score #dmg timber_test run data get entity @e[type=minecraft:player,name=reqfull_t,limit=1] SelectedItem.components."minecraft:damage"
assert score #dmg timber_test matches 249
