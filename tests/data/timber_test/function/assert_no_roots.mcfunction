#> Fails the test if any mangrove root is left in the arena. Replaces them with air while counting, so run it last.
#> (#minecraft:mangrove_logs does not contain the roots.) The arena is handled in two slabs, a command may only touch 32768 blocks.
scoreboard objectives add timber_test dummy
execute if score #debug timber_test matches 1 run return 0
execute store result score #roots timber_test run fill ~0 ~0 ~0 ~39 ~19 ~39 minecraft:air replace minecraft:mangrove_roots
execute store result score #roots_b timber_test run fill ~0 ~20 ~0 ~39 ~39 ~39 minecraft:air replace minecraft:mangrove_roots
scoreboard players operation #roots timber_test += #roots_b timber_test
execute store result score #roots_b timber_test run fill ~0 ~0 ~0 ~39 ~19 ~39 minecraft:air replace minecraft:muddy_mangrove_roots
scoreboard players operation #roots timber_test += #roots_b timber_test
execute store result score #roots_b timber_test run fill ~0 ~20 ~0 ~39 ~39 ~39 minecraft:air replace minecraft:muddy_mangrove_roots
scoreboard players operation #roots timber_test += #roots_b timber_test
assert score #roots timber_test matches 0
