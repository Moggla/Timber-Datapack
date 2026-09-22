#> Not a correctness test: reports the performance counters (see #11) for five deterministic, hand-built shapes, so the
#> numbers are exactly reproducible across runs and comparable before/after an algorithm change: a small baseline tree,
#> then four shapes near max_tree_size (555, the real ceiling a player can hit) spread long horizontally, straight up,
#> branching in every direction, and feeding one shared crown. Since the arena is only 40 blocks per axis, reaching
#> that log count needs thick cross-sections, not just long lines. Runs alone (its own environment): the counters are
#> shared datapack-wide and would be corrupted by another chop happening at the same time.
#> Leaves are placed as a 6-face shell exactly matching each solid log box (no diagonal corners): the leaf search only
#> steps to a strictly farther "distance" than where it came from, so a same-distance leaf that isn't itself touching
#> a log needs a real, increasing distance gradient to be reachable, which a uniform shell doesn't have. The shared-
#> canopy shape's outward arms use a real gradient (1, 2, 3, ...) instead, to let multiple entry logs chain hops into
#> shared, distant territory.
# @environment timber_test:benchmark
# @template timber_test:arena
# @timeout 500
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

# --- long horizontal: a 4x3 cross-section beam along x, 444 logs, mined at its middle (the initial chop detection only
# looks for the dropped item within 7 blocks of whoever mined, so this can't be mined from far away like the others)
fill ~1 ~1 ~19 ~1 ~4 ~21 minecraft:oak_leaves[persistent=false,distance=1]
fill ~39 ~1 ~19 ~39 ~4 ~21 minecraft:oak_leaves[persistent=false,distance=1]
fill ~2 ~0 ~19 ~38 ~0 ~21 minecraft:oak_leaves[persistent=false,distance=1]
fill ~2 ~5 ~19 ~38 ~5 ~21 minecraft:oak_leaves[persistent=false,distance=1]
fill ~2 ~1 ~18 ~38 ~4 ~18 minecraft:oak_leaves[persistent=false,distance=1]
fill ~2 ~1 ~22 ~38 ~4 ~22 minecraft:oak_leaves[persistent=false,distance=1]
fill ~2 ~1 ~19 ~38 ~4 ~21 minecraft:oak_log[axis=x]
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

# --- tall: a 4x3 cross-section column straight up, 444 logs, mined at its base (close to where the dummy spawns)
fill ~18 ~1 ~19 ~18 ~37 ~21 minecraft:oak_leaves[persistent=false,distance=1]
fill ~23 ~1 ~19 ~23 ~37 ~21 minecraft:oak_leaves[persistent=false,distance=1]
fill ~19 ~0 ~19 ~22 ~0 ~21 minecraft:oak_leaves[persistent=false,distance=1]
fill ~19 ~38 ~19 ~22 ~38 ~21 minecraft:oak_leaves[persistent=false,distance=1]
fill ~19 ~1 ~18 ~22 ~37 ~18 minecraft:oak_leaves[persistent=false,distance=1]
fill ~19 ~1 ~22 ~22 ~37 ~22 minecraft:oak_leaves[persistent=false,distance=1]
fill ~19 ~1 ~19 ~22 ~37 ~21 minecraft:oak_log[axis=y]
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

# --- bushy: a 3x3x10 trunk with a 3x3 cross-section branch reaching 12 blocks out in +x, -x, +z and -z at half height,
# 522 logs total, mined at the base. Leaf shells are placed generously (some overlap where a branch meets the trunk,
# harmless: any leaf a log fill lands on just gets overwritten), each piece's own 6-face shell, no diagonal corners.
fill ~18 ~1 ~19 ~18 ~10 ~21 minecraft:oak_leaves[persistent=false,distance=1]
fill ~22 ~1 ~19 ~22 ~10 ~21 minecraft:oak_leaves[persistent=false,distance=1]
fill ~19 ~0 ~19 ~21 ~0 ~21 minecraft:oak_leaves[persistent=false,distance=1]
fill ~19 ~11 ~19 ~21 ~11 ~21 minecraft:oak_leaves[persistent=false,distance=1]
fill ~19 ~1 ~18 ~21 ~10 ~18 minecraft:oak_leaves[persistent=false,distance=1]
fill ~19 ~1 ~22 ~21 ~10 ~22 minecraft:oak_leaves[persistent=false,distance=1]
fill ~34 ~4 ~19 ~34 ~6 ~21 minecraft:oak_leaves[persistent=false,distance=1]
fill ~22 ~3 ~19 ~33 ~3 ~21 minecraft:oak_leaves[persistent=false,distance=1]
fill ~22 ~7 ~19 ~33 ~7 ~21 minecraft:oak_leaves[persistent=false,distance=1]
fill ~22 ~4 ~18 ~33 ~6 ~18 minecraft:oak_leaves[persistent=false,distance=1]
fill ~22 ~4 ~22 ~33 ~6 ~22 minecraft:oak_leaves[persistent=false,distance=1]
fill ~6 ~4 ~19 ~6 ~6 ~21 minecraft:oak_leaves[persistent=false,distance=1]
fill ~7 ~3 ~19 ~18 ~3 ~21 minecraft:oak_leaves[persistent=false,distance=1]
fill ~7 ~7 ~19 ~18 ~7 ~21 minecraft:oak_leaves[persistent=false,distance=1]
fill ~7 ~4 ~18 ~18 ~6 ~18 minecraft:oak_leaves[persistent=false,distance=1]
fill ~7 ~4 ~22 ~18 ~6 ~22 minecraft:oak_leaves[persistent=false,distance=1]
fill ~19 ~4 ~34 ~21 ~6 ~34 minecraft:oak_leaves[persistent=false,distance=1]
fill ~19 ~3 ~22 ~21 ~3 ~33 minecraft:oak_leaves[persistent=false,distance=1]
fill ~19 ~7 ~22 ~21 ~7 ~33 minecraft:oak_leaves[persistent=false,distance=1]
fill ~18 ~4 ~22 ~18 ~6 ~33 minecraft:oak_leaves[persistent=false,distance=1]
fill ~22 ~4 ~22 ~22 ~6 ~33 minecraft:oak_leaves[persistent=false,distance=1]
fill ~19 ~4 ~6 ~21 ~6 ~6 minecraft:oak_leaves[persistent=false,distance=1]
fill ~19 ~3 ~7 ~21 ~3 ~18 minecraft:oak_leaves[persistent=false,distance=1]
fill ~19 ~7 ~7 ~21 ~7 ~18 minecraft:oak_leaves[persistent=false,distance=1]
fill ~18 ~4 ~7 ~18 ~6 ~18 minecraft:oak_leaves[persistent=false,distance=1]
fill ~22 ~4 ~7 ~22 ~6 ~18 minecraft:oak_leaves[persistent=false,distance=1]
fill ~19 ~1 ~19 ~21 ~10 ~21 minecraft:oak_log[axis=y]
fill ~22 ~4 ~19 ~33 ~6 ~21 minecraft:oak_log[axis=x]
fill ~7 ~4 ~19 ~18 ~6 ~21 minecraft:oak_log[axis=x]
fill ~19 ~4 ~22 ~21 ~6 ~33 minecraft:oak_log[axis=z]
fill ~19 ~4 ~7 ~21 ~6 ~18 minecraft:oak_log[axis=z]
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

# --- shared canopy: a 5x5, 20-tall trunk (500 logs, the 475 below the top level have no leaves near them at all, same
# as a real trunk below its crown) feeding a shared 5x5 cap, with 4 arms reaching out from the cap with a real
# graduated distance (2..6) so multiple entry logs can genuinely chain multiple hops into the same shared territory.
fill ~18 ~1 ~18 ~22 ~20 ~22 minecraft:oak_log[axis=y]
fill ~18 ~21 ~18 ~22 ~21 ~22 minecraft:oak_leaves[persistent=false,distance=1]
setblock ~17 ~21 ~20 minecraft:oak_leaves[persistent=false,distance=2]
setblock ~16 ~21 ~20 minecraft:oak_leaves[persistent=false,distance=3]
setblock ~15 ~21 ~20 minecraft:oak_leaves[persistent=false,distance=4]
setblock ~14 ~21 ~20 minecraft:oak_leaves[persistent=false,distance=5]
setblock ~13 ~21 ~20 minecraft:oak_leaves[persistent=false,distance=6]
setblock ~23 ~21 ~20 minecraft:oak_leaves[persistent=false,distance=2]
setblock ~24 ~21 ~20 minecraft:oak_leaves[persistent=false,distance=3]
setblock ~25 ~21 ~20 minecraft:oak_leaves[persistent=false,distance=4]
setblock ~26 ~21 ~20 minecraft:oak_leaves[persistent=false,distance=5]
setblock ~27 ~21 ~20 minecraft:oak_leaves[persistent=false,distance=6]
setblock ~20 ~21 ~17 minecraft:oak_leaves[persistent=false,distance=2]
setblock ~20 ~21 ~16 minecraft:oak_leaves[persistent=false,distance=3]
setblock ~20 ~21 ~15 minecraft:oak_leaves[persistent=false,distance=4]
setblock ~20 ~21 ~14 minecraft:oak_leaves[persistent=false,distance=5]
setblock ~20 ~21 ~13 minecraft:oak_leaves[persistent=false,distance=6]
setblock ~20 ~21 ~23 minecraft:oak_leaves[persistent=false,distance=2]
setblock ~20 ~21 ~24 minecraft:oak_leaves[persistent=false,distance=3]
setblock ~20 ~21 ~25 minecraft:oak_leaves[persistent=false,distance=4]
setblock ~20 ~21 ~26 minecraft:oak_leaves[persistent=false,distance=5]
setblock ~20 ~21 ~27 minecraft:oak_leaves[persistent=false,distance=6]
assert block ~20 ~1 ~20 minecraft:oak_log
dummy bench_t mine ~20 ~1 ~20
await not block ~20 ~1 ~20 #minecraft:logs
await delay 5t
await not entity @e[type=minecraft:marker,dx=39,dy=39,dz=39]
data modify storage timber_test:tmp test set value "benchmark_shared_canopy"
execute store result storage timber_test:tmp log_probes int 1 run scoreboard players get log_probes timber_bench
execute store result storage timber_test:tmp leaf_search_steps int 1 run scoreboard players get leaf_search_steps timber_bench
function timber_test:report_benchmark with storage timber_test:tmp
function timber_test:assert_no_tree {test:"benchmark_shared_canopy"}
