#> Counts the leaves with distance=7 in the arena into #d7_before (call before chopping), doesn't change the tree.
#> Leaves without a log in range show up in the test environment but not in a normal world, the timber datapack ignores them.
#> Counting works by cloning them out of the way (clone reports the number of copied blocks), the copies are removed again.
#> The arena is counted in two slabs, a command may only touch 32768 blocks.
scoreboard objectives add timber_test dummy
execute store result score #d7_before timber_test run clone ~0 ~0 ~0 ~39 ~19 ~39 ~0 ~64 ~0 filtered #minecraft:leaves[distance=7]
execute store result score #d7_b timber_test run clone ~0 ~20 ~0 ~39 ~39 ~39 ~0 ~64 ~0 filtered #minecraft:leaves[distance=7]
scoreboard players operation #d7_before timber_test += #d7_b timber_test
fill ~0 ~64 ~0 ~39 ~83 ~39 minecraft:air
