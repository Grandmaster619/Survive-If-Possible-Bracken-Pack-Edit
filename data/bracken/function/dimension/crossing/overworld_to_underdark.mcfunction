##########################################################
# Description: Provides safe travel. Will run when a player crosses dimensions from the Overworld to the Underdark.
# Creators: Grandmaster
##########################################################

execute in bracken:the_underdark align xz positioned ~0.5 247 ~0.5 rotated as @s run function bracken:travel/routes/overworld_to_underdark/request
