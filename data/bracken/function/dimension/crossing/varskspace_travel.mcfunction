##########################################################
# Description: Provides safe travel. Will run when a player is struck by lightning and crosses dimensions to Varskspace.
# Creators: Grandmaster
##########################################################

advancement revoke @s only bracken:varskspace/lightning
execute in bracken:varskspace positioned ~ 200 ~ rotated as @s run function bracken:travel/routes/varskspace_travel/request
