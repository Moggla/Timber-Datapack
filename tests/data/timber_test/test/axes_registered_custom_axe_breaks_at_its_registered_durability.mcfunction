#> A registered axe breaks at the durability it was registered with (30), also if the item itself could take 1000: about 30 logs
# @environment timber_test:group_3
# @template timber_test:arena
# @timeout 400
# @skyaccess true

function timber_test:platform
function timber_test:tree {feature:"minecraft:mega_spruce"}
assert block ~20 ~ ~20 #minecraft:logs

await delay 1s
function timber_test:player {name:"stick_break_t",axe:"minecraft:iron_axe"}
item replace entity @e[type=minecraft:player,name=stick_break_t,limit=1] weapon.mainhand with minecraft:stick[minecraft:max_damage=1000,minecraft:max_stack_size=1,minecraft:tool={rules:[{blocks:"#minecraft:logs",speed:6,correct_for_drops:true}],default_mining_speed:1,damage_per_block:1}]
function timber_test:mine {name:"stick_break_t"}

# wait until the datapack has had its chance to act
# (await doesn't work inside a called function, so this block is repeated in every test)
# 1. the base log is gone: the dummy hit the tree
# 2. five ticks pass: the datapack reacts to the mined block in the next tick or two
# 3. no marker is left in the arena
await not block ~20 ~ ~20 #minecraft:logs
await delay 5t
await not entity @e[type=minecraft:marker,dx=39,dy=39,dz=39]

scoreboard objectives add timber_test dummy
execute store success score #has timber_test if items entity @e[type=minecraft:player,name=stick_break_t] weapon.mainhand *
# the datapack took the axe when it was worn out, the item itself had 900 durability left
assert score #has timber_test matches 0
