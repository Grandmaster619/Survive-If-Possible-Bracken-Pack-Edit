##########################################################
# Description: Handling for travel and traveling effects for the nether
# Creators: Grandmaster and Bracken
##########################################################

# Travel to underdark
execute if entity @s[y=222,dy=100] run return run function bracken:dimension/crossing/nether_to_underdark

# Travel to sanctum
execute if entity @s[y=4,dy=-200] run return run function bracken:dimension/crossing/nether_to_sanctum

# Effects
effect give @s[predicate=!bracken:sneak,y=258,dy=100] levitation 2 2 true
effect give @s[y=204,dy=100] slow_falling 2 2 true
effect give @s[y=204,dy=100] jump_boost 2 1 true
effect give @s[y=220,dy=100] jump_boost 2 7 true

# travel omnidrome
execute if entity @n[type=minecraft:end_crystal,distance=..1] run return run function bracken:dimension/crossing/nether_to_omnidrome