##########################################################
# Description: Commands that activate when the player uses the ability book Scatterstorm.
# Creators: Bracken and Grandmaster
##########################################################

execute unless entity @s[level=7..] run return 0
execute if score @s bp.travel_state matches 1.. run return 0
execute unless score @s bp.world_player_id matches 1.. run function bracken:player/set_player_id
execute store result storage bracken:travel lookup.id int 1 run scoreboard players get @s bp.world_player_id
function bracken:travel/scatter/start with storage bracken:travel lookup
