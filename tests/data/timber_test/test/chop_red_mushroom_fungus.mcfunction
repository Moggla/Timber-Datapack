#> Mining the bottom stem of a huge red mushroom with an axe chops down the whole fungus (chop_fungi is on)
# @template timber_test:arena
# @timeout 400
# @skyaccess true

function timber_test:platform
# nether fungi only grow on nylium, without it place feature fails without a message
setblock ~20 ~-1 ~20 minecraft:mycelium
function timber_test:tree {feature:"minecraft:huge_red_mushroom"}
assert block ~20 ~ ~20 minecraft:mushroom_stem

# chop_fungi is off by default. It is a global setting and the tests run in parallel: the users are counted, it is switched
# back only when the last one is done
scoreboard players add #fungi_users timber_test 1
scoreboard players set chop_fungi timber 1

await delay 1s
# With chop_fungi on, every chop of the datapack ends with a kill of ALL marker items of mushroom stems in the world (no distance
# limit). A chop in the same tick that runs first deletes the marker of a mushroom, which then isn't chopped. So the fungus tests
# wait until the trees are done and chop one after the other, 48 ticks after the first fungus test.
await delay 148t
function timber_test:player {name:"red_mush_t",axe:"minecraft:iron_axe"}
function timber_test:mine {name:"red_mush_t"}

# wait until the datapack is done with the fungus
# (await doesn't work inside a called function, so this block is repeated in every test)
# 1. the base stem is gone: the dummy hit the fungus
# 2. five ticks pass: the datapack reacts to the mined block a tick or two later, a mushroom stem breaks at once with an axe
# 3. no marker is left in the arena: chopping and slow chop delete their markers when they are done
await not block ~20 ~ ~20 minecraft:mushroom_stem
await delay 5t
await not entity @e[type=minecraft:marker,dx=39,dy=39,dz=39]

scoreboard players remove #fungi_users timber_test 1
execute if score #fungi_users timber_test matches ..0 run scoreboard players set chop_fungi timber 0

function timber_test:assert_no_fungus {test:"chop_red_mushroom_fungus"}
