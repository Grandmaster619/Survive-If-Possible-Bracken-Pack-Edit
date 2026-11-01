##########################################################
# Description: Provides safe travel. Will run when a player crosses dimensions from the Underdark to the Overworld.
# Creators: Grandmaster
##########################################################

execute at @s unless dimension bracken:the_underdark run return 0
execute in minecraft:overworld align xz positioned ~0.5 -59 ~0.5 rotated as @s run function bracken:travel/routes/underdark_to_overworld/request
