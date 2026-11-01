##########################################################
# Description: Provides safe travel. Will run when a player crosses dimensions from the Nether to Underdark.
# Creators: Grandmaster
##########################################################

execute in bracken:the_underdark align xz positioned ~0.5 7 ~0.5 rotated as @s run function bracken:travel/routes/nether_to_underdark/request
