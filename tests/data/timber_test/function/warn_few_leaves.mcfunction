#> Warns that a tree was not chopped because too few leaves touch its trunk. Same two paths as warn_d7 (log line for the CI, orange chat for players).
$execute unless entity @a[tag=!timber_test_dummy] run say TIMBER-WARNING $(test): tree was not chopped, only $(adj) leaves within 2 blocks of the trunk (min_leaves_found is $(min)), every tree should be choppable
$tellraw @a[tag=!timber_test_dummy] {"text":"Test warning $(test): tree was not chopped, only $(adj) leaves within 2 blocks of the trunk (min_leaves_found is $(min)), every tree should be choppable","color":"gold"}
