##########################################################
# Description: List of dimension effects for Panacea.
# Creators: Bracken and Grandmaster
##########################################################

# Rain Event
execute if score @s bp.1_second matches 2 if predicate bracken:rain run function bracken:entity/panacea/rain_event

# Mobs
execute if score @s bp.1_second matches 9 run function bracken:entity/panacea/panacea_mobs

# Effects
effect give @s[scores={bp.10_second=3}] minecraft:regeneration 2 0 true




# QUICKSAND
execute if entity @s[predicate=bracken:quicksand] run function bracken:dimension/commands/other/quicksand

# Dimension Travel
execute if score @s bp.creeper matches 1 if data storage bracken:config {dimension_travel:true} if entity @e[type=minecraft:creeper,distance=..1] run return run function bracken:dimension/crossing/panacea_to_overworld
execute if score @s bp.1_second matches 12 if data storage bracken:config {dimension_travel:true} if entity @s[y=-35,dy=-300] in bracken:void positioned ~ 240 ~ rotated as @s run return run function bracken:travel/routes/panacea_fall_to_void/request
