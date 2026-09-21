#> After timber:uninstall none of the scoreboards and triggers of the datapack is left
# @environment timber_test:uninstall
# @timeout 100

# The checks are generated from the code of the datapack by .github/scripts/gen-uninstall-check.py (the workflow runs it before the tests):
# one per "scoreboard objectives add" in any function. So a scoreboard or trigger that is added and forgotten in uninstall.mcfunction makes this fail.
function timber:uninstall
function timber_test:generated/uninstall_objectives
