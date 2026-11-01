##########################################################
# Description: List of dimension effects for the end.
# Creators: Bracken
##########################################################

execute if score @s bp.1_second matches 12 if data storage bracken:config {dimension_travel:true} if entity @s[y=-35,dy=-300] in bracken:void positioned ~ 240 ~ rotated as @s run return run function bracken:travel/routes/end_fall_to_void/request
