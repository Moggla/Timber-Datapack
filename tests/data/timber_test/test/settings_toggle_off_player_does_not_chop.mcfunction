#> A player who switched Timber off with the TimberToggle trigger doesn't chop
# @template timber_test:arena
# @timeout 200
# @skyaccess true

scoreboard objectives add timber_test dummy
function timber_test:platform
function timber_test:tree {feature:"minecraft:oak"}
assert block ~20 ~ ~20 #minecraft:logs

await delay 1s
function timber_test:count_logs {test:"settings_toggle_off_player_does_not_chop"}
function timber_test:player {name:"toggle_off_t",axe:"minecraft:iron_axe"}
# the datapack runs every tick and handles the trigger, the score timber_disabled says that the player is switched off
scoreboard players set toggle_off_t TimberToggle 1
await score toggle_off_t timber_disabled matches 1

function timber_test:mine {name:"toggle_off_t"}

# wait until the datapack has had its chance to act
# (await doesn't work inside a called function, so this block is repeated in every test)
await not block ~20 ~ ~20 #minecraft:logs
await delay 5t
await not entity @e[type=minecraft:marker,dx=39,dy=39,dz=39]

function timber_test:assert_only_mined_gone {test:"settings_toggle_off_player_does_not_chop"}
