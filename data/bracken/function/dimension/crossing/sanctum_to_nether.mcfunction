##########################################################
# Description: Provides safe travel. Will run when a player crosses dimensions from Sanctum to the Nether.
# Creators: Grandmaster
##########################################################

execute in minecraft:the_nether align xz positioned ~0.5 7 ~0.5 rotated as @s run function bracken:travel/routes/sanctum_to_nether/request
