execute unless score @s bp.world_player_id matches 1.. run return 0
execute store result storage bracken:travel scratch.id int 1 run scoreboard players get @s bp.world_player_id
function bracken:travel/clear_player with storage bracken:travel scratch
