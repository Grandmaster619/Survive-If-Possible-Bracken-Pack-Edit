##########################################################
# Description: Pax Portal effects for Overworld.
# Creators: Bracken and Grandmaster
##########################################################

execute at @a[distance=..30] run particle minecraft:dust{color:[0.5, 0.5, 0.0], scale:1.0} ~ ~1 ~ 0.2 0.4 0.2 0.01 1
particle minecraft:dust{color:[0.5, 0.5, 0.0], scale:1.0} ^1 ^16.5 ^.5 2 5 2 0 150
execute as @p[distance=..10,tag=bp.portal_teleport,scores={bp.portal=1..}] in minecraft:overworld positioned ~ 200 ~ rotated as @s run function bracken:travel/routes/gateway_to_overworld/request
