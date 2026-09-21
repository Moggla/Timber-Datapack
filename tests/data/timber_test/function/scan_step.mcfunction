#> Looks at the block under the scanner, moves on if it is no log. Returns 1 if a log was found, 0 if the whole area was searched.
#> return run function is a tail call, the walk through up to 64000 blocks (it stops at the first log, that is after a few layers) doesn't pile up nested calls.
execute if block ~ ~ ~ #minecraft:logs run return 1
execute if score #sx timber_test matches ..38 run return run function timber_test:scan_next_x
execute if score #sz timber_test matches ..38 run return run function timber_test:scan_next_z
execute if score #sy timber_test matches ..38 run return run function timber_test:scan_next_y
return 0
