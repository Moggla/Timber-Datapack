#> Not a correctness test: reports the performance counters (see #11) for four deterministic, hand-built shapes, so the
#> numbers are exactly reproducible across runs and comparable before/after an algorithm change: a small baseline tree,
#> then three ~38-log stress shapes spread long horizontally, straight up, and branching in every direction, to see
#> whether a fix helps all shapes equally or just one. Runs alone (its own environment): the counters are shared
#> datapack-wide and would be corrupted by another chop happening at the same time.
#> Every leaf is placed directly face-adjacent to a log (a "+" cross around each log run, no diagonal corners): the leaf
#> search only steps to a strictly farther "distance" than where it came from, so a hand-built same-distance leaf that
#> isn't itself touching a log needs a real, increasing distance gradient to be reachable, which it doesn't have.
# @environment timber_test:benchmark
# @template timber_test:arena
# @timeout 400
# @skyaccess true

function timber_test:platform
await delay 1s
function timber_test:player {name:"bench_t",axe:"minecraft:netherite_axe"}

# --- small: a normal-sized hand-built oak, the baseline everything else is compared against
fill ~19 ~1 ~20 ~19 ~4 ~20 minecraft:oak_leaves[persistent=false,distance=1]
fill ~21 ~1 ~20 ~21 ~4 ~20 minecraft:oak_leaves[persistent=false,distance=1]
fill ~20 ~1 ~19 ~20 ~4 ~19 minecraft:oak_leaves[persistent=false,distance=1]
fill ~20 ~1 ~21 ~20 ~4 ~21 minecraft:oak_leaves[persistent=false,distance=1]
setblock ~20 ~5 ~20 minecraft:oak_leaves[persistent=false,distance=1]
fill ~20 ~1 ~20 ~20 ~4 ~20 minecraft:oak_log[axis=y]
assert block ~20 ~1 ~20 minecraft:oak_log
dummy bench_t mine ~20 ~1 ~20
await not block ~20 ~1 ~20 #minecraft:logs
await delay 5t
await not entity @e[type=minecraft:marker,dx=39,dy=39,dz=39]
scoreboard objectives add timber_test dummy
data modify storage timber_test:tmp test set value "benchmark_small"
execute store result storage timber_test:tmp log_probes int 1 run scoreboard players get log_probes timber_bench
execute store result storage timber_test:tmp leaf_search_steps int 1 run scoreboard players get leaf_search_steps timber_bench
function timber_test:report_benchmark with storage timber_test:tmp
function timber_test:assert_no_tree {test:"benchmark_small"}

# --- long horizontal: a 37 log line along x, mined at its middle (the initial chop detection only looks for the dropped
# item within 7 blocks of whoever mined, so this can't be mined from far away like the tall/bushy shapes mine their base)
fill ~2 ~2 ~20 ~38 ~2 ~20 minecraft:oak_leaves[persistent=false,distance=1]
fill ~2 ~0 ~20 ~38 ~0 ~20 minecraft:oak_leaves[persistent=false,distance=1]
fill ~2 ~1 ~19 ~38 ~1 ~19 minecraft:oak_leaves[persistent=false,distance=1]
fill ~2 ~1 ~21 ~38 ~1 ~21 minecraft:oak_leaves[persistent=false,distance=1]
setblock ~1 ~1 ~20 minecraft:oak_leaves[persistent=false,distance=1]
setblock ~39 ~1 ~20 minecraft:oak_leaves[persistent=false,distance=1]
fill ~2 ~1 ~20 ~38 ~1 ~20 minecraft:oak_log[axis=x]
assert block ~20 ~1 ~20 minecraft:oak_log
dummy bench_t mine ~20 ~1 ~20
await not block ~20 ~1 ~20 #minecraft:logs
await delay 5t
await not entity @e[type=minecraft:marker,dx=39,dy=39,dz=39]
data modify storage timber_test:tmp test set value "benchmark_long_horizontal"
execute store result storage timber_test:tmp log_probes int 1 run scoreboard players get log_probes timber_bench
execute store result storage timber_test:tmp leaf_search_steps int 1 run scoreboard players get leaf_search_steps timber_bench
function timber_test:report_benchmark with storage timber_test:tmp
function timber_test:assert_no_tree {test:"benchmark_long_horizontal"}

# --- tall: a 37 log column straight up, mined at its base (close to where the dummy spawns)
fill ~19 ~1 ~20 ~19 ~37 ~20 minecraft:oak_leaves[persistent=false,distance=1]
fill ~21 ~1 ~20 ~21 ~37 ~20 minecraft:oak_leaves[persistent=false,distance=1]
fill ~20 ~1 ~19 ~20 ~37 ~19 minecraft:oak_leaves[persistent=false,distance=1]
fill ~20 ~1 ~21 ~20 ~37 ~21 minecraft:oak_leaves[persistent=false,distance=1]
setblock ~20 ~38 ~20 minecraft:oak_leaves[persistent=false,distance=1]
fill ~20 ~1 ~20 ~20 ~37 ~20 minecraft:oak_log[axis=y]
assert block ~20 ~1 ~20 minecraft:oak_log
dummy bench_t mine ~20 ~1 ~20
await not block ~20 ~1 ~20 #minecraft:logs
await delay 5t
await not entity @e[type=minecraft:marker,dx=39,dy=39,dz=39]
data modify storage timber_test:tmp test set value "benchmark_tall"
execute store result storage timber_test:tmp log_probes int 1 run scoreboard players get log_probes timber_bench
execute store result storage timber_test:tmp leaf_search_steps int 1 run scoreboard players get leaf_search_steps timber_bench
function timber_test:report_benchmark with storage timber_test:tmp
function timber_test:assert_no_tree {test:"benchmark_tall"}

# --- bushy: a 10 tall trunk with a branch reaching out in +x, -x, +z and -z at half height, ~38 logs total, mined at the
# base. Each run (trunk, each branch) gets its own "+" cross of leaves around it, same as the small/tall trunks above.
fill ~19 ~1 ~20 ~19 ~10 ~20 minecraft:oak_leaves[persistent=false,distance=1]
fill ~21 ~1 ~20 ~21 ~10 ~20 minecraft:oak_leaves[persistent=false,distance=1]
fill ~20 ~1 ~19 ~20 ~10 ~19 minecraft:oak_leaves[persistent=false,distance=1]
fill ~20 ~1 ~21 ~20 ~10 ~21 minecraft:oak_leaves[persistent=false,distance=1]
setblock ~20 ~11 ~20 minecraft:oak_leaves[persistent=false,distance=1]
fill ~21 ~6 ~20 ~27 ~6 ~20 minecraft:oak_leaves[persistent=false,distance=1]
fill ~21 ~4 ~20 ~27 ~4 ~20 minecraft:oak_leaves[persistent=false,distance=1]
fill ~21 ~5 ~19 ~27 ~5 ~19 minecraft:oak_leaves[persistent=false,distance=1]
fill ~21 ~5 ~21 ~27 ~5 ~21 minecraft:oak_leaves[persistent=false,distance=1]
setblock ~28 ~5 ~20 minecraft:oak_leaves[persistent=false,distance=1]
fill ~13 ~6 ~20 ~19 ~6 ~20 minecraft:oak_leaves[persistent=false,distance=1]
fill ~13 ~4 ~20 ~19 ~4 ~20 minecraft:oak_leaves[persistent=false,distance=1]
fill ~13 ~5 ~19 ~19 ~5 ~19 minecraft:oak_leaves[persistent=false,distance=1]
fill ~13 ~5 ~21 ~19 ~5 ~21 minecraft:oak_leaves[persistent=false,distance=1]
setblock ~12 ~5 ~20 minecraft:oak_leaves[persistent=false,distance=1]
fill ~20 ~6 ~21 ~20 ~6 ~27 minecraft:oak_leaves[persistent=false,distance=1]
fill ~20 ~4 ~21 ~20 ~4 ~27 minecraft:oak_leaves[persistent=false,distance=1]
fill ~19 ~5 ~21 ~19 ~5 ~27 minecraft:oak_leaves[persistent=false,distance=1]
fill ~21 ~5 ~21 ~21 ~5 ~27 minecraft:oak_leaves[persistent=false,distance=1]
setblock ~20 ~5 ~28 minecraft:oak_leaves[persistent=false,distance=1]
fill ~20 ~6 ~13 ~20 ~6 ~19 minecraft:oak_leaves[persistent=false,distance=1]
fill ~20 ~4 ~13 ~20 ~4 ~19 minecraft:oak_leaves[persistent=false,distance=1]
fill ~19 ~5 ~13 ~19 ~5 ~19 minecraft:oak_leaves[persistent=false,distance=1]
fill ~21 ~5 ~13 ~21 ~5 ~19 minecraft:oak_leaves[persistent=false,distance=1]
setblock ~20 ~5 ~12 minecraft:oak_leaves[persistent=false,distance=1]
fill ~20 ~1 ~20 ~20 ~10 ~20 minecraft:oak_log[axis=y]
fill ~21 ~5 ~20 ~27 ~5 ~20 minecraft:oak_log[axis=x]
fill ~13 ~5 ~20 ~19 ~5 ~20 minecraft:oak_log[axis=x]
fill ~20 ~5 ~21 ~20 ~5 ~27 minecraft:oak_log[axis=z]
fill ~20 ~5 ~13 ~20 ~5 ~19 minecraft:oak_log[axis=z]
assert block ~20 ~1 ~20 minecraft:oak_log
dummy bench_t mine ~20 ~1 ~20
await not block ~20 ~1 ~20 #minecraft:logs
await delay 5t
await not entity @e[type=minecraft:marker,dx=39,dy=39,dz=39]
data modify storage timber_test:tmp test set value "benchmark_bushy"
execute store result storage timber_test:tmp log_probes int 1 run scoreboard players get log_probes timber_bench
execute store result storage timber_test:tmp leaf_search_steps int 1 run scoreboard players get leaf_search_steps timber_bench
function timber_test:report_benchmark with storage timber_test:tmp
function timber_test:assert_no_tree {test:"benchmark_bushy"}
