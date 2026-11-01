##########################################################
# Description: Will run when a player crosses dimensions from the Overworld to the Brine.
# Creators: Bracken
##########################################################

execute in bracken:the_brine if entity @n[type=marker,tag=bp.brine_spawn_portal,distance=..1000] at @n[type=marker,tag=bp.brine_spawn_portal,distance=..1000] run return run function bracken:travel/routes/overworld_to_brine_existing/request
execute at @s in bracken:the_brine positioned ~ 455 ~ rotated as @s run function bracken:travel/routes/overworld_to_brine_new/request
