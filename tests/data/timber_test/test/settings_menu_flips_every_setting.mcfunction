#> Every setting of the menu can be flipped by a Timber admin and flipped back
# @environment timber_test:flip_toggles
# @timeout 100

scoreboard objectives add timber_test dummy
dummy adm_t spawn
tag @e[type=minecraft:player,name=adm_t] add timber_admin

# standing: default 1
assert score standing timber matches 1
scoreboard players set #req timber 100
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score standing timber matches 0
scoreboard players set #req timber 100
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score standing timber matches 1

# sneaking: default 0
assert score sneaking timber matches 0
scoreboard players set #req timber 101
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score sneaking timber matches 1
scoreboard players set #req timber 101
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score sneaking timber matches 0

# destroy_leaves: default 1
assert score destroy_leaves timber matches 1
scoreboard players set #req timber 102
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score destroy_leaves timber matches 0
scoreboard players set #req timber 102
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score destroy_leaves timber matches 1

# plant_sapling: default 0
assert score plant_sapling timber matches 0
scoreboard players set #req timber 103
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score plant_sapling timber matches 1
scoreboard players set #req timber 103
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score plant_sapling timber matches 0

# destroy_roots: default 1
assert score destroy_roots timber matches 1
scoreboard players set #req timber 104
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score destroy_roots timber matches 0
scoreboard players set #req timber 104
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score destroy_roots timber matches 1

# start_chop_on_root: default 1
assert score start_chop_on_root timber matches 1
scoreboard players set #req timber 105
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score start_chop_on_root timber matches 0
scoreboard players set #req timber 105
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score start_chop_on_root timber matches 1

# slow_chop: default 0
assert score slow_chop timber matches 0
scoreboard players set #req timber 106
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score slow_chop timber matches 1
scoreboard players set #req timber 106
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score slow_chop timber matches 0

# chop_down: default 0
assert score chop_down timber matches 0
scoreboard players set #req timber 107
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score chop_down timber matches 1
scoreboard players set #req timber 107
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score chop_down timber matches 0

# stop_chopping: default 0
assert score stop_chopping timber matches 0
scoreboard players set #req timber 108
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score stop_chopping timber matches 1
scoreboard players set #req timber 108
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score stop_chopping timber matches 0

# wear_out: default 1
assert score wear_out timber matches 1
scoreboard players set #req timber 109
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score wear_out timber matches 0
scoreboard players set #req timber 109
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score wear_out timber matches 1

# drop_loot: default 0
assert score drop_loot timber matches 0
scoreboard players set #req timber 110
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score drop_loot timber matches 1
scoreboard players set #req timber 110
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score drop_loot timber matches 0

# hunger: default 0
assert score hunger timber matches 0
scoreboard players set #req timber 111
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score hunger timber matches 1
scoreboard players set #req timber 111
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score hunger timber matches 0

# stopsound: default 0
assert score stopsound timber matches 0
scoreboard players set #req timber 112
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score stopsound timber matches 1
scoreboard players set #req timber 112
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score stopsound timber matches 0

# chop_trees: default 1
assert score chop_trees timber matches 1
scoreboard players set #req timber 113
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score chop_trees timber matches 0
scoreboard players set #req timber 113
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score chop_trees timber matches 1

# chop_fungi: default 0
assert score chop_fungi timber matches 0
scoreboard players set #req timber 114
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score chop_fungi timber matches 1
scoreboard players set #req timber 114
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score chop_fungi timber matches 0

# persistent: default 0
assert score persistent timber matches 0
scoreboard players set #req timber 115
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score persistent timber matches 1
scoreboard players set #req timber 115
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score persistent timber matches 0

# wooden_axe: default 1
assert score wooden_axe timber matches 1
scoreboard players set #req timber 116
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score wooden_axe timber matches 0
scoreboard players set #req timber 116
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score wooden_axe timber matches 1

# golden_axe: default 1
assert score golden_axe timber matches 1
scoreboard players set #req timber 117
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score golden_axe timber matches 0
scoreboard players set #req timber 117
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score golden_axe timber matches 1

# stone_axe: default 1
assert score stone_axe timber matches 1
scoreboard players set #req timber 118
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score stone_axe timber matches 0
scoreboard players set #req timber 118
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score stone_axe timber matches 1

# copper_axe: default 1
assert score copper_axe timber matches 1
scoreboard players set #req timber 119
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score copper_axe timber matches 0
scoreboard players set #req timber 119
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score copper_axe timber matches 1

# iron_axe: default 1
assert score iron_axe timber matches 1
scoreboard players set #req timber 120
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score iron_axe timber matches 0
scoreboard players set #req timber 120
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score iron_axe timber matches 1

# diamond_axe: default 1
assert score diamond_axe timber matches 1
scoreboard players set #req timber 121
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score diamond_axe timber matches 0
scoreboard players set #req timber 121
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score diamond_axe timber matches 1

# netherite_axe: default 1
assert score netherite_axe timber matches 1
scoreboard players set #req timber 122
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score netherite_axe timber matches 0
scoreboard players set #req timber 122
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score netherite_axe timber matches 1
