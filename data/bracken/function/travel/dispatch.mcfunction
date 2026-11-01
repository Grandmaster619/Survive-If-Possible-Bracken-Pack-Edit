execute store result storage bracken:travel lookup.id int 1 run scoreboard players get @s bp.world_player_id
scoreboard players set @s bp.travel_state 2
function bracken:travel/dispatch_player with storage bracken:travel lookup
