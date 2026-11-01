##########################################################
# Description: Searches for the players home placed using Returning Tides before teleporting the player to it.
# Creators: Grandmaster
##########################################################

execute if score @s bp.travel_state matches 1.. run return 0
execute if score @s bp.travel_state matches ..-1 run return 0
tag @s remove bp.recall_wait
execute unless entity @s[level=33..] run return run function bracken:travel/routes/recall/cancel
execute store result storage bracken:travel lookup.id int 1 run scoreboard players get @s bp.world_player_id
function bracken:travel/routes/recall/find with storage bracken:travel lookup
execute unless score @s bp.travel_state matches 1 run function bracken:travel/routes/recall/cancel
