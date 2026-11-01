##########################################################
# Description: Omni teleport command.
# Creators: Bracken
##########################################################

execute at @p[distance=1..,predicate=bracken:dimensions/omnidrome] run function bracken:travel/routes/omni_nearest_player/request
return 1
