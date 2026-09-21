#> Warns that a chopped tree left leaves standing (not distance=7, those have warn_d7). Same two paths as warn_d7 (log line for the CI, orange chat for players).
$execute unless entity @a[tag=!timber_test_dummy] run say TIMBER-WARNING $(test): $(leaves) leaves were left standing, every tree should be chopped completely
$tellraw @a[tag=!timber_test_dummy] {"text":"Test warning $(test): $(leaves) leaves were left standing, every tree should be chopped completely","color":"gold"}
