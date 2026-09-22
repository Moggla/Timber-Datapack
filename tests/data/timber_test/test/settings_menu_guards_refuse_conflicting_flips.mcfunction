#> Flips that would break another setting are refused (slow chop and loot to inventory, stop on axe break and wear out,
#> stop on axe break and require full durability)
# @environment timber_test:flip_guards
# @timeout 100

scoreboard objectives add timber_test dummy
dummy adm_t spawn
tag @e[type=minecraft:player,name=adm_t] add timber_admin

# slow chop is on: loot to inventory can't be switched on, without slow chop it can
scoreboard players set slow_chop timber 1
scoreboard players set #req timber 110
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score drop_loot timber matches 0
scoreboard players set slow_chop timber 0
scoreboard players set #req timber 110
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score drop_loot timber matches 1
scoreboard players set drop_loot timber 0

# loot to inventory is on: slow chop can't be switched on, without it can
scoreboard players set drop_loot timber 1
scoreboard players set #req timber 106
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score slow_chop timber matches 0
scoreboard players set drop_loot timber 0
scoreboard players set #req timber 106
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score slow_chop timber matches 1
scoreboard players set slow_chop timber 0

# stop on axe break is on: wear out can't be switched off, without it can
scoreboard players set stop_chopping timber 1
scoreboard players set #req timber 109
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score wear_out timber matches 1
scoreboard players set stop_chopping timber 0
scoreboard players set #req timber 109
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score wear_out timber matches 0
scoreboard players set wear_out timber 1

# wear out is off: stop on axe break can't be switched on, with wear out on it can
scoreboard players set wear_out timber 0
scoreboard players set #req timber 108
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score stop_chopping timber matches 0
scoreboard players set wear_out timber 1
scoreboard players set #req timber 108
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score stop_chopping timber matches 1
scoreboard players set stop_chopping timber 0

# wear out is off: require full durability can't be switched on, with wear out on it can
scoreboard players set wear_out timber 0
scoreboard players set #req timber 116
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score require_full_durability timber matches 0
scoreboard players set wear_out timber 1
scoreboard players set #req timber 116
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score require_full_durability timber matches 1
scoreboard players set require_full_durability timber 0

# stop on axe break is on: require full durability can't be switched on, without it can
scoreboard players set stop_chopping timber 1
scoreboard players set #req timber 116
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score require_full_durability timber matches 0
scoreboard players set stop_chopping timber 0
scoreboard players set #req timber 116
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score require_full_durability timber matches 1
scoreboard players set require_full_durability timber 0

# require full durability is on: stop on axe break can't be switched on, without it can
scoreboard players set require_full_durability timber 1
scoreboard players set #req timber 108
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score stop_chopping timber matches 0
scoreboard players set require_full_durability timber 0
scoreboard players set #req timber 108
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score stop_chopping timber matches 1
scoreboard players set stop_chopping timber 0

# require full durability is on: wear out can't be switched off, without it can
scoreboard players set require_full_durability timber 1
scoreboard players set #req timber 109
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score wear_out timber matches 1
scoreboard players set require_full_durability timber 0
scoreboard players set #req timber 109
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score wear_out timber matches 0
scoreboard players set wear_out timber 1
