# a macro function: when the criterion is unknown the arguments can not be filled in and the call of this function fails, then the caller
# stores 0. Only a function that returns something counts as successful.
$scoreboard objectives add $(obj) minecraft.used:$(ns).$(path)
return 1
