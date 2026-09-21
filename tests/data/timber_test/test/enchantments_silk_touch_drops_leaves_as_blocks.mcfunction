#> With Silk Touch on the axe the leaves of a chopped tree drop as leaf blocks
# @environment timber_test:group_1
# @template timber_test:arena
# @timeout 400
# @skyaccess true

function timber_test:platform
function timber_test:tree {feature:"minecraft:oak"}
assert block ~20 ~ ~20 #minecraft:logs

await delay 1s
function timber_test:player {name:"silk_on_t",axe:"minecraft:iron_axe"}
item replace entity @e[type=minecraft:player,name=silk_on_t,limit=1] weapon.mainhand with minecraft:iron_axe[minecraft:enchantments={"minecraft:silk_touch":1}]
function timber_test:mine {name:"silk_on_t"}

# wait until the datapack has had its chance to act
# (await doesn't work inside a called function, so this block is repeated in every test)
# 1. the base log is gone: the dummy hit the tree
# 2. five ticks pass: the datapack reacts to the mined block in the next tick or two
# 3. no marker is left in the arena
await not block ~20 ~ ~20 #minecraft:logs
await delay 5t
await not entity @e[type=minecraft:marker,dx=39,dy=39,dz=39]

assert entity @e[type=minecraft:item,dx=39,dy=39,dz=39,nbt={Item:{id:"minecraft:oak_leaves"}}]
