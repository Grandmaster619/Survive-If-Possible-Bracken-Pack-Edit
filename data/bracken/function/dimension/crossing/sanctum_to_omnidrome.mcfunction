##########################################################
# Description: Runs when a player crosses dimensions from the Sanctum to Omnidrome.
# Creators: Brackenstrike
##########################################################

execute in bracken:omnidrome if entity @n[type=marker,tag=bp.dimension_marker,distance=..200] at @n[type=marker,tag=bp.dimension_marker,distance=..200] run return run function bracken:travel/routes/sanctum_to_omnidrome_existing/request
execute in bracken:omnidrome align xz positioned ~1.457206493202712 65 ~-2.128231913204502 run function bracken:travel/routes/sanctum_to_omnidrome_new/request
