#> Prints the performance counters of the chop that just ran (see run.mcfunction's "performance counters" reset). Same two paths as
#> the warn_* helpers (log line for the CI, chat for players). Not a warning: nothing here ever fails the test.
#> @param test name of the test
#> @param log_probes value of "log_probes timber_bench" after the chop
#> @param leaf_search_steps value of "leaf_search_steps timber_bench" after the chop
$execute unless entity @a[tag=!timber_test_dummy] run say TIMBER-BENCHMARK $(test): log_probes=$(log_probes) leaf_search_steps=$(leaf_search_steps)
$tellraw @a[tag=!timber_test_dummy] {"text":"Benchmark $(test): log_probes=$(log_probes) leaf_search_steps=$(leaf_search_steps)","color":"aqua"}
