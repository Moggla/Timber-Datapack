execute as @a[tag=timber_settings1] run function timber:settings/settings1
execute as @a[tag=timber_settings2] run function timber:settings/settings2

tag @a[tag=timber_settings1] remove timber_settings1
tag @a[tag=timber_settings2] remove timber_settings1
tag @a[tag=timber_settings1] remove timber_settings2
tag @a[tag=timber_settings2] remove timber_settings2