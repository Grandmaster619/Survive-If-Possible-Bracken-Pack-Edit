##########################################################
# Description: Provides safe travel. Will run when a player crosses dimensions from Omnidrome to the Sanctum.
# Creators: Bracken
##########################################################

execute in minecraft:the_nether align xz run tp @s ~0.5 232 ~0.5
execute at @s run forceload add ~ ~
effect give @s slow_falling 10 2 true
execute at @s[gamemode=!spectator] run fill ~ ~1 ~ ~ ~0 ~ air
advancement grant @s only bracken:omnidrome/leave
execute in minecraft:the_nether run function bracken:remove_forceload
