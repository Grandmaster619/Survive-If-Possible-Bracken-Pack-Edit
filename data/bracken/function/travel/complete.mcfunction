$execute unless score @s bp.travel_seq matches $(request) run return 0
execute unless score @s bp.travel_epoch = #session bp.travel_epoch run return 0
execute unless score @s bp.travel_state matches 2..3 run return 0
$data modify storage bracken:travel completion_status set value $(status)
execute unless data storage bracken:travel {completion_status:1} run return run function bracken:travel/cancel
execute unless score @s bp.travel_state matches 3 run return 0
execute store result storage bracken:travel lookup.id int 1 run scoreboard players get @s bp.world_player_id
function bracken:travel/complete_player with storage bracken:travel lookup
