#> Warns about leaves that were left standing.
#> Without a real player (CI) it says it in the server log, where the workflow turns lines with TIMBER-WARNING into GitHub warnings.
#> Real players get an orange chat message instead (tellraw isn't logged, say can't be colored).
$execute unless entity @a[tag=!timber_test_dummy] run say TIMBER-WARNING $(test): $(after) leaves with distance=7 were left standing ($(before) before chopping)
$tellraw @a[tag=!timber_test_dummy] {"text":"Test warning $(test): $(after) leaves with distance=7 were left standing ($(before) before chopping)","color":"gold"}
