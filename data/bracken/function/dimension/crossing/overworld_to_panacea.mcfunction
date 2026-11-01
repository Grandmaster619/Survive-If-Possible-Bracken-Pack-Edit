##########################################################
# Description: Provides safe travel. Will run when a player crosses dimensions from the Overworld to Panacea.
# Creators: Grandmaster
##########################################################

execute in bracken:panacea positioned ~ 400 ~ rotated as @s run function bracken:travel/routes/overworld_to_panacea/request
