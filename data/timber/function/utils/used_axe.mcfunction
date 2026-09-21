# The caller checked that the axe is enabled: standing or sneaking?
function timber:utils/sneaking

# remove mushroom_stem marker
kill @e[type=minecraft:item,distance=..7,nbt={Item:{components:{"minecraft:custom_data":{Tags:["timber_location"]}}}}]
