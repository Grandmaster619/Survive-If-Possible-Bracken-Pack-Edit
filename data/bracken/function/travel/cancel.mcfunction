scoreboard players set @s bp.travel_result 0
execute if score @s bp.travel_state matches 1..3 run function bracken:travel/cancel_route
scoreboard players set @s bp.travel_state -1
scoreboard players set @s bp.travel_age 0
