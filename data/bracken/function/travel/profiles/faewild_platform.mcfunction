##########################################################
# Description: This function will create a leaf platform when the player travels from the overworld to the faewild
#   so as not to fall in the void or back into the overworld
# Creators: Grandmaster
##########################################################

setblock ~ ~-1 ~ azalea_leaves keep
fill ~-3 ~-1 ~-3 ~3 ~-1 ~3 azalea_leaves replace air
fill ~ ~ ~ ~ ~1 ~ air
return 1
