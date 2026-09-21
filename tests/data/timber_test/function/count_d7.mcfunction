#> Counts the leaves with distance=7 around the tree into #d7_before (call before chopping), doesn't change the tree.
#> Leaves without a log in range show up in the test environment but not in a normal world, the timber datapack ignores them.
#> Counting works by cloning them out of the way (clone reports the number of copied blocks), the copies are removed again.
scoreboard objectives add timber_test dummy
execute store result score #d7_before timber_test run clone ~1 ~ ~1 ~15 ~20 ~15 ~1 ~60 ~1 filtered #minecraft:leaves[distance=7]
fill ~1 ~60 ~1 ~15 ~80 ~15 minecraft:air
