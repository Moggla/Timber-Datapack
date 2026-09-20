#> Mining the bottom log of an oak tree with an axe chops down the whole tree
# @timeout 200
# @skyaccess true

# platform
fill ~-3 ~-1 ~-4 ~5 ~-1 ~4 minecraft:dirt

# oak tree: 5 logs high with leaves around the top
fill ~2 ~ ~ ~2 ~4 ~ minecraft:oak_log
fill ~1 ~3 ~-2 ~3 ~4 ~2 minecraft:oak_leaves replace minecraft:air
assert block ~2 ~4 ~ minecraft:oak_log
assert block ~1 ~3 ~ minecraft:oak_leaves

# player mines the bottom log with an axe
dummy tester spawn
tp @e[type=minecraft:player,name=tester,limit=1] ~0.5 ~ ~0.5
item replace entity @e[type=minecraft:player,name=tester,limit=1] weapon.mainhand with minecraft:iron_axe
dummy tester mine ~2 ~ ~

# the top log can only disappear when the whole tree is chopped
await delay 2s
assert not block ~2 ~4 ~ minecraft:oak_log
assert not block ~2 ~1 ~ minecraft:oak_log
assert not block ~2 ~3 ~ minecraft:oak_log
assert not block ~1 ~3 ~ minecraft:oak_leaves
assert not block ~3 ~4 ~ minecraft:oak_leaves
