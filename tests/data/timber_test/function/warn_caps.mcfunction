#> Warns that a fungus was chopped but cap blocks are left standing. Same two paths as warn_d7 (log line for the CI, orange chat for players).
$execute unless entity @a[tag=!timber_test_dummy] run say TIMBER-WARNING $(test): $(caps) cap blocks were left standing, every fungus should be chopped completely
$tellraw @a[tag=!timber_test_dummy] {"text":"Test warning $(test): $(caps) cap blocks were left standing, every fungus should be chopped completely","color":"gold"}
