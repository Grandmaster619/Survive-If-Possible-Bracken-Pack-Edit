$execute at @s unless dimension $(dimension) run return run function bracken:travel/cancel
execute at @s run function bracken:travel/complete_route
execute at @s run function bracken:dimension/travel/force_update
scoreboard players set @s bp.travel_result 1
function bracken:travel/reset
