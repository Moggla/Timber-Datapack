#> Without Unbreaking the axe wears about once per log: twice the damage is more than the number of logs
# @environment timber_test:group_4
# @template timber_test:arena
# @timeout 400
# @skyaccess true

function timber_test:platform
function timber_test:tree {feature:"minecraft:mega_spruce"}
assert block ~20 ~ ~20 #minecraft:logs

await delay 1s
function timber_test:count_logs {test:"enchantments_no_unbreaking_wears_once_per_log"}
function timber_test:player {name:"unb_none_t",axe:"minecraft:iron_axe"}
item replace entity @e[type=minecraft:player,name=unb_none_t,limit=1] weapon.mainhand with minecraft:iron_axe
function timber_test:mine {name:"unb_none_t"}

# wait until the datapack has had its chance to act
# (await doesn't work inside a called function, so this block is repeated in every test)
# 1. the base log is gone: the dummy hit the tree
# 2. five ticks pass: the datapack reacts to the mined block in the next tick or two
# 3. no marker is left in the arena
await not block ~20 ~ ~20 #minecraft:logs
await delay 5t
await not entity @e[type=minecraft:marker,dx=39,dy=39,dz=39]

scoreboard objectives add timber_test dummy
scoreboard players set #dmg timber_test 0
scoreboard players set #two timber_test 2
execute store result score #dmg timber_test run data get entity @e[type=minecraft:player,name=unb_none_t,limit=1] SelectedItem.components."minecraft:damage"
# twice the damage compared with the number of logs (no comparison of two scores in assert: subtract, then matches)
scoreboard players operation #dmg timber_test *= #two timber_test
scoreboard players operation #dmg timber_test -= #logs0_enchantments_no_unbreaking_wears_once_per_log timber_test
assert score #dmg timber_test matches 0..
