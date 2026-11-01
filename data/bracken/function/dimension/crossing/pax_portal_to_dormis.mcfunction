##########################################################
# Description: Provides safe travel. Will run when a player crosses dimensions from the Pax Portal to Dormis.
# Creators: Grandmaster
##########################################################

execute in bracken:dormis if entity @n[type=marker,tag=bp.dormis_spawn_platform,distance=..1000] at @n[type=marker,tag=bp.dormis_spawn_platform,distance=..1000] run return run function bracken:travel/routes/gateway_to_dormis_existing/request
execute in bracken:dormis align xz positioned ~6.420365961711923 467.00252298813375 ~3.108776193494691 run function bracken:travel/routes/gateway_to_dormis_new/request
