##########################################################
# Description: Provides safe travel. Will run when a player crosses dimensions from Glacium to the Overworld.
# Creators: Grandmaster
##########################################################

execute in minecraft:overworld positioned ~ 240 ~ rotated as @s run function bracken:travel/routes/glacium_to_overworld/request
