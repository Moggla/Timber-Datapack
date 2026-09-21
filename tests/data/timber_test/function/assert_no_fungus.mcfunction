#> Fails the test if a stem of a fungus is left in the arena, cap blocks that are left only warn.
#> Stems: all logs (crimson and warped stems are logs) and mushroom_stem. Caps: warts, shroomlight, red and brown mushroom blocks.
#> Replaces them with air while counting, so run it last. The arena is handled in two slabs, a command may only touch 32768 blocks.
#> @param test name of the test
scoreboard objectives add timber_test dummy
scoreboard players set #stems timber_test 0
scoreboard players set #caps timber_test 0
execute store result score #dtmp timber_test run fill ~0 ~0 ~0 ~39 ~19 ~39 minecraft:air replace #minecraft:logs
scoreboard players operation #stems timber_test += #dtmp timber_test
execute store result score #dtmp timber_test run fill ~0 ~20 ~0 ~39 ~39 ~39 minecraft:air replace #minecraft:logs
scoreboard players operation #stems timber_test += #dtmp timber_test
execute store result score #dtmp timber_test run fill ~0 ~0 ~0 ~39 ~19 ~39 minecraft:air replace minecraft:mushroom_stem
scoreboard players operation #stems timber_test += #dtmp timber_test
execute store result score #dtmp timber_test run fill ~0 ~20 ~0 ~39 ~39 ~39 minecraft:air replace minecraft:mushroom_stem
scoreboard players operation #stems timber_test += #dtmp timber_test
execute store result score #dtmp timber_test run fill ~0 ~0 ~0 ~39 ~19 ~39 minecraft:air replace #minecraft:wart_blocks
scoreboard players operation #caps timber_test += #dtmp timber_test
execute store result score #dtmp timber_test run fill ~0 ~20 ~0 ~39 ~39 ~39 minecraft:air replace #minecraft:wart_blocks
scoreboard players operation #caps timber_test += #dtmp timber_test
execute store result score #dtmp timber_test run fill ~0 ~0 ~0 ~39 ~19 ~39 minecraft:air replace minecraft:shroomlight
scoreboard players operation #caps timber_test += #dtmp timber_test
execute store result score #dtmp timber_test run fill ~0 ~20 ~0 ~39 ~39 ~39 minecraft:air replace minecraft:shroomlight
scoreboard players operation #caps timber_test += #dtmp timber_test
execute store result score #dtmp timber_test run fill ~0 ~0 ~0 ~39 ~19 ~39 minecraft:air replace minecraft:red_mushroom_block
scoreboard players operation #caps timber_test += #dtmp timber_test
execute store result score #dtmp timber_test run fill ~0 ~20 ~0 ~39 ~39 ~39 minecraft:air replace minecraft:red_mushroom_block
scoreboard players operation #caps timber_test += #dtmp timber_test
execute store result score #dtmp timber_test run fill ~0 ~0 ~0 ~39 ~19 ~39 minecraft:air replace minecraft:brown_mushroom_block
scoreboard players operation #caps timber_test += #dtmp timber_test
execute store result score #dtmp timber_test run fill ~0 ~20 ~0 ~39 ~39 ~39 minecraft:air replace minecraft:brown_mushroom_block
scoreboard players operation #caps timber_test += #dtmp timber_test

# cap blocks that are left standing only warn (the goal is to chop everything, this is a gap), stems have to be gone
$data modify storage timber_test:tmp test set value "$(test)"
execute store result storage timber_test:tmp caps int 1 run scoreboard players get #caps timber_test
execute unless score #caps timber_test matches 0 run function timber_test:warn_caps with storage timber_test:tmp
assert score #stems timber_test matches 0
