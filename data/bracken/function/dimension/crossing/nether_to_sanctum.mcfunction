##########################################################
# Description: Provides safe travel. Will run when a player crosses dimensions from the Nether to Sanctum.
# Creators: Grandmaster
##########################################################

execute in bracken:sanctum align xz positioned ~0.5 232 ~0.5 rotated as @s run function bracken:travel/routes/nether_to_sanctum/request
