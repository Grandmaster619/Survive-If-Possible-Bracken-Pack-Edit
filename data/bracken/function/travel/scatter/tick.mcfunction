scoreboard players add @s bp.travel_pending 1
execute store result storage bracken:travel lookup.id int 1 run scoreboard players get @s bp.world_player_id
function bracken:travel/scatter/settle with storage bracken:travel lookup
