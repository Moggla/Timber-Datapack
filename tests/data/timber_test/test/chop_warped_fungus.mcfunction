#> Mining the bottom stem of a warped fungus with an axe chops down the whole fungus (chop_fungi is on)
# @environment timber_test:chop_fungi_on
# @template timber_test:arena
# @timeout 400
# @skyaccess true

function timber_test:platform
# nether fungi only grow on nylium, without it place feature fails without a message
setblock ~20 ~-1 ~20 minecraft:warped_nylium
function timber_test:tree {feature:"minecraft:warped_fungus"}
assert block ~20 ~ ~20 #minecraft:logs

await delay 1s
# With chop_fungi on, every chop of the datapack ends with a kill of ALL marker items of mushroom stems in the world (no distance
# limit). A chop in the same tick that runs first deletes the marker of a mushroom, which then isn't chopped. So the fungus tests
# chop one after the other, 12 ticks after the first one.
await delay 12t
function timber_test:player {name:"warped_t",axe:"minecraft:iron_axe"}
function timber_test:mine {name:"warped_t"}

# wait until the datapack is done with the fungus
# (await doesn't work inside a called function, so this block is repeated in every test)
# 1. the base stem is gone: the dummy hit the fungus
# 2. five ticks pass: the datapack reacts to the mined block a tick or two later, a mushroom stem breaks at once with an axe
# 3. no marker is left in the arena: chopping and slow chop delete their markers when they are done
await not block ~20 ~ ~20 #minecraft:logs
await delay 5t
await not entity @e[type=minecraft:marker,dx=39,dy=39,dz=39]

function timber_test:assert_no_fungus {test:"chop_warped_fungus"}
