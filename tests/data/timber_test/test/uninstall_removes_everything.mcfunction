#> After timber:uninstall nothing of the datapack is left: no scoreboard or trigger, no storage key, no scheduled function
# @environment timber_test:uninstall
# @timeout 100

# The checks are generated from the code of the datapack by .github/scripts/gen-uninstall-check.py (the workflow runs it before the tests):
# one per "scoreboard objectives add", storage key and "schedule function" in any function. So a scoreboard, trigger, storage or schedule that is
# added and forgotten in uninstall.mcfunction makes this fail, with its name.
# The storage keys get a value first, so there is something to remove.
scoreboard objectives add timber_test dummy
scoreboard players set #uninstall_prepare_ran timber_test 0
scoreboard players set #uninstall_check_ran timber_test 0
function timber_test:generated/uninstall_prepare
function timber:uninstall
function timber_test:generated/uninstall_objectives

# The generated functions set these markers in their first line. PackTest doesn't complain about a function that doesn't exist, so without
# the markers a missing generation step (a workflow that forgot it, a wrong path) would leave a test that checks nothing and passes.
assert score #uninstall_prepare_ran timber_test matches 1
assert score #uninstall_check_ran timber_test matches 1

# The scoreboards of the axes are made from the registered axes, their names are macro arguments in the code and not in the generated check.
# The vanilla ones and the axe of these tests have to be gone too.
data modify storage timber_test:uninstall axes set value []
execute store success score #exists timber_test run scoreboard players add #probe timber_axe.minecraft.wooden_axe 0
execute if score #exists timber_test matches 1 run data modify storage timber_test:uninstall axes append value "scoreboard timber_axe.minecraft.wooden_axe"
execute store success score #exists timber_test run scoreboard players add #probe timber_axe.minecraft.stone_axe 0
execute if score #exists timber_test matches 1 run data modify storage timber_test:uninstall axes append value "scoreboard timber_axe.minecraft.stone_axe"
execute store success score #exists timber_test run scoreboard players add #probe timber_axe.minecraft.copper_axe 0
execute if score #exists timber_test matches 1 run data modify storage timber_test:uninstall axes append value "scoreboard timber_axe.minecraft.copper_axe"
execute store success score #exists timber_test run scoreboard players add #probe timber_axe.minecraft.iron_axe 0
execute if score #exists timber_test matches 1 run data modify storage timber_test:uninstall axes append value "scoreboard timber_axe.minecraft.iron_axe"
execute store success score #exists timber_test run scoreboard players add #probe timber_axe.minecraft.golden_axe 0
execute if score #exists timber_test matches 1 run data modify storage timber_test:uninstall axes append value "scoreboard timber_axe.minecraft.golden_axe"
execute store success score #exists timber_test run scoreboard players add #probe timber_axe.minecraft.diamond_axe 0
execute if score #exists timber_test matches 1 run data modify storage timber_test:uninstall axes append value "scoreboard timber_axe.minecraft.diamond_axe"
execute store success score #exists timber_test run scoreboard players add #probe timber_axe.minecraft.netherite_axe 0
execute if score #exists timber_test matches 1 run data modify storage timber_test:uninstall axes append value "scoreboard timber_axe.minecraft.netherite_axe"
execute store success score #exists timber_test run scoreboard players add #probe timber_axe.minecraft.stick 0
execute if score #exists timber_test matches 1 run data modify storage timber_test:uninstall axes append value "scoreboard timber_axe.minecraft.stick"
execute if data storage timber_test:uninstall axes[0] run fail [{"text":"the scoreboards of the axes are left after uninstall: "},{"nbt":"axes","storage":"timber_test:uninstall"}]
