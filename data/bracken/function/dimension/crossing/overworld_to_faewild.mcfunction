##########################################################
# Description: Provides safe travel. Will run when a player crosses dimensions from the Overworld to the Faewild.
# Creators: Grandmaster
##########################################################

execute in bracken:the_faewild align xz positioned ~0.5 12 ~0.5 rotated as @s run function bracken:travel/routes/overworld_to_faewild/request
