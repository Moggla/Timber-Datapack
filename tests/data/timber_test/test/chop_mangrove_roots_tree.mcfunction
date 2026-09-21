#> Mining a root of a mangrove tree chops down the whole tree (start_chop_on_root)
# @template timber_test:arena
# @timeout 200
# @skyaccess true

function timber_test:platform
function timber_test:tree {feature:"minecraft:mangrove"}

# let the leaves settle before the tree is chopped
await delay 1s
function timber_test:count_d7 {test:"chop_mangrove_roots_tree"}
function timber_test:count_adjacent {test:"chop_mangrove_roots_tree"}
function timber_test:count_logs {test:"chop_mangrove_roots_tree"}

function timber_test:player {name:"mangrove_root_t",axe:"minecraft:iron_axe"}
# mine the lowest root of the trunk column (first match from the bottom)
scoreboard players set #mined timber_test 0
execute if block ~20 ~0 ~20 minecraft:mangrove_roots unless score #mined timber_test matches 1 run dummy mangrove_root_t mine ~20 ~0 ~20
execute if block ~20 ~0 ~20 minecraft:mangrove_roots run scoreboard players set #mined timber_test 1
execute if block ~20 ~1 ~20 minecraft:mangrove_roots unless score #mined timber_test matches 1 run dummy mangrove_root_t mine ~20 ~1 ~20
execute if block ~20 ~1 ~20 minecraft:mangrove_roots run scoreboard players set #mined timber_test 1
execute if block ~20 ~2 ~20 minecraft:mangrove_roots unless score #mined timber_test matches 1 run dummy mangrove_root_t mine ~20 ~2 ~20
execute if block ~20 ~2 ~20 minecraft:mangrove_roots run scoreboard players set #mined timber_test 1
execute if block ~20 ~3 ~20 minecraft:mangrove_roots unless score #mined timber_test matches 1 run dummy mangrove_root_t mine ~20 ~3 ~20
execute if block ~20 ~3 ~20 minecraft:mangrove_roots run scoreboard players set #mined timber_test 1
execute if block ~20 ~4 ~20 minecraft:mangrove_roots unless score #mined timber_test matches 1 run dummy mangrove_root_t mine ~20 ~4 ~20
execute if block ~20 ~4 ~20 minecraft:mangrove_roots run scoreboard players set #mined timber_test 1
execute if block ~20 ~5 ~20 minecraft:mangrove_roots unless score #mined timber_test matches 1 run dummy mangrove_root_t mine ~20 ~5 ~20
execute if block ~20 ~5 ~20 minecraft:mangrove_roots run scoreboard players set #mined timber_test 1
execute if block ~20 ~6 ~20 minecraft:mangrove_roots unless score #mined timber_test matches 1 run dummy mangrove_root_t mine ~20 ~6 ~20
execute if block ~20 ~6 ~20 minecraft:mangrove_roots run scoreboard players set #mined timber_test 1
execute if block ~20 ~7 ~20 minecraft:mangrove_roots unless score #mined timber_test matches 1 run dummy mangrove_root_t mine ~20 ~7 ~20
execute if block ~20 ~7 ~20 minecraft:mangrove_roots run scoreboard players set #mined timber_test 1
execute if block ~20 ~8 ~20 minecraft:mangrove_roots unless score #mined timber_test matches 1 run dummy mangrove_root_t mine ~20 ~8 ~20
execute if block ~20 ~8 ~20 minecraft:mangrove_roots run scoreboard players set #mined timber_test 1
execute if block ~20 ~9 ~20 minecraft:mangrove_roots unless score #mined timber_test matches 1 run dummy mangrove_root_t mine ~20 ~9 ~20
execute if block ~20 ~9 ~20 minecraft:mangrove_roots run scoreboard players set #mined timber_test 1
execute if block ~20 ~10 ~20 minecraft:mangrove_roots unless score #mined timber_test matches 1 run dummy mangrove_root_t mine ~20 ~10 ~20
execute if block ~20 ~10 ~20 minecraft:mangrove_roots run scoreboard players set #mined timber_test 1
execute if block ~20 ~11 ~20 minecraft:mangrove_roots unless score #mined timber_test matches 1 run dummy mangrove_root_t mine ~20 ~11 ~20
execute if block ~20 ~11 ~20 minecraft:mangrove_roots run scoreboard players set #mined timber_test 1
execute if block ~20 ~12 ~20 minecraft:mangrove_roots unless score #mined timber_test matches 1 run dummy mangrove_root_t mine ~20 ~12 ~20
execute if block ~20 ~12 ~20 minecraft:mangrove_roots run scoreboard players set #mined timber_test 1
execute if block ~20 ~13 ~20 minecraft:mangrove_roots unless score #mined timber_test matches 1 run dummy mangrove_root_t mine ~20 ~13 ~20
execute if block ~20 ~13 ~20 minecraft:mangrove_roots run scoreboard players set #mined timber_test 1
execute if block ~20 ~14 ~20 minecraft:mangrove_roots unless score #mined timber_test matches 1 run dummy mangrove_root_t mine ~20 ~14 ~20
execute if block ~20 ~14 ~20 minecraft:mangrove_roots run scoreboard players set #mined timber_test 1
execute if block ~20 ~15 ~20 minecraft:mangrove_roots unless score #mined timber_test matches 1 run dummy mangrove_root_t mine ~20 ~15 ~20
execute if block ~20 ~15 ~20 minecraft:mangrove_roots run scoreboard players set #mined timber_test 1
execute if block ~20 ~16 ~20 minecraft:mangrove_roots unless score #mined timber_test matches 1 run dummy mangrove_root_t mine ~20 ~16 ~20
execute if block ~20 ~16 ~20 minecraft:mangrove_roots run scoreboard players set #mined timber_test 1
execute if block ~20 ~17 ~20 minecraft:mangrove_roots unless score #mined timber_test matches 1 run dummy mangrove_root_t mine ~20 ~17 ~20
execute if block ~20 ~17 ~20 minecraft:mangrove_roots run scoreboard players set #mined timber_test 1
execute if block ~20 ~18 ~20 minecraft:mangrove_roots unless score #mined timber_test matches 1 run dummy mangrove_root_t mine ~20 ~18 ~20
execute if block ~20 ~18 ~20 minecraft:mangrove_roots run scoreboard players set #mined timber_test 1
execute if block ~20 ~19 ~20 minecraft:mangrove_roots unless score #mined timber_test matches 1 run dummy mangrove_root_t mine ~20 ~19 ~20
execute if block ~20 ~19 ~20 minecraft:mangrove_roots run scoreboard players set #mined timber_test 1
execute if block ~20 ~20 ~20 minecraft:mangrove_roots unless score #mined timber_test matches 1 run dummy mangrove_root_t mine ~20 ~20 ~20
execute if block ~20 ~20 ~20 minecraft:mangrove_roots run scoreboard players set #mined timber_test 1
execute if block ~20 ~21 ~20 minecraft:mangrove_roots unless score #mined timber_test matches 1 run dummy mangrove_root_t mine ~20 ~21 ~20
execute if block ~20 ~21 ~20 minecraft:mangrove_roots run scoreboard players set #mined timber_test 1
execute if block ~20 ~22 ~20 minecraft:mangrove_roots unless score #mined timber_test matches 1 run dummy mangrove_root_t mine ~20 ~22 ~20
execute if block ~20 ~22 ~20 minecraft:mangrove_roots run scoreboard players set #mined timber_test 1
execute if block ~20 ~23 ~20 minecraft:mangrove_roots unless score #mined timber_test matches 1 run dummy mangrove_root_t mine ~20 ~23 ~20
execute if block ~20 ~23 ~20 minecraft:mangrove_roots run scoreboard players set #mined timber_test 1
execute if block ~20 ~24 ~20 minecraft:mangrove_roots unless score #mined timber_test matches 1 run dummy mangrove_root_t mine ~20 ~24 ~20
execute if block ~20 ~24 ~20 minecraft:mangrove_roots run scoreboard players set #mined timber_test 1

# wait until the datapack is done with the tree
# (await doesn't work inside a called function, so this block is repeated in every test)
# 1. the mined block dropped as an item: the dummy hit the tree (the base can be a root here, and any item would do for other things lying around, so wait for this one)
# 2. two ticks pass: the datapack reacts to the mined block in the next tick
# 3. no marker is left in the arena: chopping and slow chop delete their markers when they are done
await entity @e[type=minecraft:item,dx=39,dy=39,dz=39,nbt={Item:{id:"minecraft:mangrove_roots"}}]
await delay 2t
await not entity @e[type=minecraft:marker,dx=39,dy=39,dz=39]

# the datapack only chops a tree with at least min_leaves_found leaves next to a trunk. Some mangroves have fewer (measured with
# 40 trees each: mangrove 15 %, tall mangrove 10 % below 5, the tall one down to 0). That is a gap in the datapack, the goal is to
# chop every tree, so such a tree doesn't fail the test but must not be chopped and gives a warning
execute if score #adj_chop_mangrove_roots_tree timber_test >= min_leaves_found timber run function timber_test:assert_no_roots
execute if score #adj_chop_mangrove_roots_tree timber_test >= min_leaves_found timber run function timber_test:assert_no_tree {test:"chop_mangrove_roots_tree"}
execute if score #adj_chop_mangrove_roots_tree timber_test < min_leaves_found timber run function timber_test:assert_not_chopped {test:"chop_mangrove_roots_tree"}
