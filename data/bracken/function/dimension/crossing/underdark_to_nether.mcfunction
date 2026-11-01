##########################################################
# Description: Provides safe travel. Will run when a player crosses dimensions from the Underdark to the Nether.
# Creators: Grandmaster, Bracken
##########################################################

execute in minecraft:the_nether align xz positioned ~0.5 244 ~0.5 rotated as @s run function bracken:travel/routes/underdark_to_nether/request
