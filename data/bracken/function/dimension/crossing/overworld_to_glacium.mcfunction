##########################################################
# Description: Provides safe travel. Will run when a player crosses dimensions from the Overworld to Glacium.
# Creators: Grandmaster
##########################################################

execute in bracken:glacium positioned ~ 400 ~ rotated as @s run function bracken:travel/routes/overworld_to_glacium/request
