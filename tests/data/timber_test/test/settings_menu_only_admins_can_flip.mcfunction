#> Only a player with the tag timber_admin can change a setting
# @environment timber_test:flip_admin
# @timeout 100

scoreboard objectives add timber_test dummy
dummy adm_t spawn
tag @e[type=minecraft:player,name=adm_t] add timber_admin
dummy user_t spawn

# a player without the tag: nothing changes
assert score sneaking timber matches 0
scoreboard players set #req timber 101
execute as @e[type=minecraft:player,name=user_t,limit=1] run function timber:settings/dispatch
assert score sneaking timber matches 0

# an admin can
scoreboard players set #req timber 101
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score sneaking timber matches 1

# removing the tag takes it away again
tag @e[type=minecraft:player,name=adm_t] remove timber_admin
scoreboard players set #req timber 101
execute as @e[type=minecraft:player,name=adm_t,limit=1] run function timber:settings/dispatch
assert score sneaking timber matches 1
