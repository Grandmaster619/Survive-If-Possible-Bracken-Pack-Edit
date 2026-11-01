##########################################################
# Description: Triggered by enderling using the teleport item
# Creators: Sulfenir, Conure
##########################################################

execute if score @s bp.travel_state matches 1.. run return run advancement revoke @s only bracken:technical/species/enderling/controlled_teleport
execute if score @s bp.enderling_travel_cd matches 1.. run return run function bracken:travel/routes/enderling_controlled/cancel

execute anchored eyes positioned ^ ^ ^ run function bracken:player/species/enderling/teleport/raycast

execute unless score @s bp.travel_state matches 1.. run advancement revoke @s only bracken:technical/species/enderling/controlled_teleport
