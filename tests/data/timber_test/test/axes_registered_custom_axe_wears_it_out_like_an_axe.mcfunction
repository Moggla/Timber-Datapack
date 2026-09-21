#> The damage of a registered axe counts up with every log, a small tree doesn't break it (registered durability 30)
# @environment timber_test:group_2
# @template timber_test:arena
# @timeout 400
# @skyaccess true

function timber_test:platform
function timber_test:tree {feature:"minecraft:oak"}
assert block ~20 ~ ~20 #minecraft:logs

await delay 1s
function timber_test:player {name:"stick_wear_t",axe:"minecraft:iron_axe"}
item replace entity @e[type=minecraft:player,name=stick_wear_t,limit=1] weapon.mainhand with minecraft:stick[minecraft:max_damage=1000,minecraft:max_stack_size=1,minecraft:tool={rules:[{blocks:"#minecraft:logs",speed:6,correct_for_drops:true}],default_mining_speed:1,damage_per_block:1}]
function timber_test:mine {name:"stick_wear_t"}

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
execute store result score #dmg timber_test run data get entity @e[type=minecraft:player,name=stick_wear_t,limit=1] SelectedItem.components."minecraft:damage"
assert score #dmg timber_test matches 3..29
