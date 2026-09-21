#> Debug mode: reports what is left and fails the test without touching a single block, so the arena can be looked at.
#> Switch it on with /scoreboard players set #debug timber_test 1 and off with ... 0 (create the objective first: /scoreboard objectives add timber_test dummy).
#> Counting works by cloning the blocks far above the arena (clone reports the number of copied blocks), the copies are removed again.
#> The arena is counted in two slabs, a command may only touch 32768 blocks.
execute store result score #dbg_logs timber_test run clone ~0 ~0 ~0 ~39 ~19 ~39 ~0 ~64 ~0 filtered #minecraft:logs
execute store result score #dbg_b timber_test run clone ~0 ~20 ~0 ~39 ~39 ~39 ~0 ~64 ~0 filtered #minecraft:logs
scoreboard players operation #dbg_logs timber_test += #dbg_b timber_test
execute store result score #dbg_leaves timber_test run clone ~0 ~0 ~0 ~39 ~19 ~39 ~0 ~64 ~0 filtered #minecraft:leaves
execute store result score #dbg_b timber_test run clone ~0 ~20 ~0 ~39 ~39 ~39 ~0 ~64 ~0 filtered #minecraft:leaves
scoreboard players operation #dbg_leaves timber_test += #dbg_b timber_test
execute store result score #dbg_d7 timber_test run clone ~0 ~0 ~0 ~39 ~19 ~39 ~0 ~64 ~0 filtered #minecraft:leaves[distance=7]
execute store result score #dbg_b timber_test run clone ~0 ~20 ~0 ~39 ~39 ~39 ~0 ~64 ~0 filtered #minecraft:leaves[distance=7]
scoreboard players operation #dbg_d7 timber_test += #dbg_b timber_test
execute store result score #dbg_roots timber_test run clone ~0 ~0 ~0 ~39 ~19 ~39 ~0 ~64 ~0 filtered minecraft:mangrove_roots
execute store result score #dbg_b timber_test run clone ~0 ~20 ~0 ~39 ~39 ~39 ~0 ~64 ~0 filtered minecraft:mangrove_roots
scoreboard players operation #dbg_roots timber_test += #dbg_b timber_test
fill ~0 ~64 ~0 ~39 ~83 ~39 minecraft:air
fail [{"text":"DEBUG mode, nothing was removed. Left standing: logs "},{"score":{"name":"#dbg_logs","objective":"timber_test"}},{"text":", leaves "},{"score":{"name":"#dbg_leaves","objective":"timber_test"}},{"text":" (distance=7: "},{"score":{"name":"#dbg_d7","objective":"timber_test"}},{"text":"), mangrove roots "},{"score":{"name":"#dbg_roots","objective":"timber_test"}}]
