#> The sliders of the menu set their value: 1 followed by the value (7 comes as 17, 25 as 125, 100 as 1100)
# @environment timber_test:flip_sliders
# @timeout 100

scoreboard objectives add timber_test dummy
dummy adm_t spawn
tag @e[type=minecraft:player,name=adm_t] add timber_admin

# slider blocks sets blocks_per_chop
scoreboard players set adm_t TimberSetBlocks 11
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/apply/blocks
assert score blocks_per_chop timber matches 1
scoreboard players set adm_t TimberSetBlocks 17
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/apply/blocks
assert score blocks_per_chop timber matches 7
scoreboard players set adm_t TimberSetBlocks 125
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/apply/blocks
assert score blocks_per_chop timber matches 25
scoreboard players set adm_t TimberSetBlocks 1100
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/apply/blocks
assert score blocks_per_chop timber matches 100
scoreboard players set adm_t TimberSetBlocks 11000
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/apply/blocks
assert score blocks_per_chop timber matches 1000

# slider ticks sets time_between_chops
scoreboard players set adm_t TimberSetTicks 11
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/apply/ticks
assert score time_between_chops timber matches 1
scoreboard players set adm_t TimberSetTicks 17
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/apply/ticks
assert score time_between_chops timber matches 7
scoreboard players set adm_t TimberSetTicks 125
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/apply/ticks
assert score time_between_chops timber matches 25
scoreboard players set adm_t TimberSetTicks 1100
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/apply/ticks
assert score time_between_chops timber matches 100
scoreboard players set adm_t TimberSetTicks 11000
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/apply/ticks
assert score time_between_chops timber matches 1000

# slider treesize sets max_tree_size
scoreboard players set adm_t TimberSetTreeSize 11
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/apply/treesize
assert score max_tree_size timber matches 1
scoreboard players set adm_t TimberSetTreeSize 17
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/apply/treesize
assert score max_tree_size timber matches 7
scoreboard players set adm_t TimberSetTreeSize 125
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/apply/treesize
assert score max_tree_size timber matches 25
scoreboard players set adm_t TimberSetTreeSize 1100
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/apply/treesize
assert score max_tree_size timber matches 100
scoreboard players set adm_t TimberSetTreeSize 11000
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/apply/treesize
assert score max_tree_size timber matches 1000

# slider leaves sets min_leaves_found
scoreboard players set adm_t TimberSetLeaves 11
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/apply/leaves
assert score min_leaves_found timber matches 1
scoreboard players set adm_t TimberSetLeaves 17
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/apply/leaves
assert score min_leaves_found timber matches 7
scoreboard players set adm_t TimberSetLeaves 125
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/apply/leaves
assert score min_leaves_found timber matches 25
scoreboard players set adm_t TimberSetLeaves 1100
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/apply/leaves
assert score min_leaves_found timber matches 100
scoreboard players set adm_t TimberSetLeaves 11000
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/apply/leaves
assert score min_leaves_found timber matches 1000
