#> After timber:uninstall nothing of the datapack is left: no scoreboard or trigger, no storage key, no scheduled function
# @environment timber_test:uninstall
# @timeout 100

# The checks are generated from the code of the datapack by .github/scripts/gen-uninstall-check.py (the workflow runs it before the tests):
# one per "scoreboard objectives add", storage key and "schedule function" in any function. So a scoreboard, trigger, storage or schedule that is
# added and forgotten in uninstall.mcfunction makes this fail, with its name.
# The storage keys get a value first, so there is something to remove.
function timber_test:generated/uninstall_prepare
function timber:uninstall
function timber_test:generated/uninstall_objectives
