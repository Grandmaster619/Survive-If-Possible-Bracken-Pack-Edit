##########################################################
# Description: Provides safe travel. Will run when a player crosses dimensions from the Brine to Overworld.
# Creators: Grandmaster
##########################################################

execute in minecraft:overworld positioned ~ 250 ~ rotated as @s run function bracken:travel/routes/brine_to_overworld/request
