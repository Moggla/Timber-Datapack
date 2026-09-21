#> Generates a vanilla worldgen tree with its trunk base at ~20 ~ ~20, the middle of the arena
#> Not closer to the origin: the tree can't grow into the origin column (PackTest keeps something there), place feature fails silently
#> Some trees (tall mangrove in about 1 of 12) can't be placed, place feature then reports a failure and changes nothing: try up to 5 times
#> @param feature configured feature id, e.g. "minecraft:oak"
scoreboard objectives add timber_test dummy
scoreboard players set #tree_ok timber_test 0
$execute store success score #tree_ok timber_test run place feature $(feature) ~20 ~ ~20
$execute unless score #tree_ok timber_test matches 1 store success score #tree_ok timber_test run place feature $(feature) ~20 ~ ~20
$execute unless score #tree_ok timber_test matches 1 store success score #tree_ok timber_test run place feature $(feature) ~20 ~ ~20
$execute unless score #tree_ok timber_test matches 1 store success score #tree_ok timber_test run place feature $(feature) ~20 ~ ~20
$execute unless score #tree_ok timber_test matches 1 store success score #tree_ok timber_test run place feature $(feature) ~20 ~ ~20
assert score #tree_ok timber_test matches 1
