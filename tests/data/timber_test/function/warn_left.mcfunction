#> Warns that a chop left logs or leaves standing. Same two paths as warn_d7 (log line for the CI, orange chat for players).
$execute unless entity @a[tag=!timber_test_dummy] run say TIMBER-WARNING $(test): chop left $(logs) of $(total) logs, $(roots) roots and $(leaves) leaves standing, every tree should be chopped completely
$tellraw @a[tag=!timber_test_dummy] {"text":"Test warning $(test): chop left $(logs) of $(total) logs, $(roots) roots and $(leaves) leaves standing, every tree should be chopped completely","color":"gold"}
