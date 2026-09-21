#> A player who switched Timber off and on again with the TimberToggle trigger chops
# @template timber_test:arena
# @timeout 200
# @skyaccess true

scoreboard objectives add timber_test dummy
function timber_test:platform
function timber_test:tree {feature:"minecraft:oak"}
assert block ~20 ~ ~20 #minecraft:logs

await delay 1s
function timber_test:count_d7 {test:"settings_toggle_twice_player_chops_again"}
function timber_test:player {name:"toggle_on_t",axe:"minecraft:iron_axe"}
scoreboard players set toggle_on_t TimberToggle 1
await score toggle_on_t timber_disabled matches 1
# the trigger has to be enabled again before the next use, the datapack does that every tick
scoreboard players set toggle_on_t TimberToggle 1
await score toggle_on_t timber_disabled matches 0

function timber_test:mine {name:"toggle_on_t"}

# wait until the datapack has had its chance to act
# (await doesn't work inside a called function, so this block is repeated in every test)
await not block ~20 ~ ~20 #minecraft:logs
await delay 5t
await not entity @e[type=minecraft:marker,dx=39,dy=39,dz=39]

function timber_test:assert_no_tree {test:"settings_toggle_twice_player_chops_again"}
