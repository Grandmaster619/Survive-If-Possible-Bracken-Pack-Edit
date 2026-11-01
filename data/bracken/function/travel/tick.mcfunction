execute if score @s bp.travel_state matches 1..3 unless score @s bp.travel_epoch = #session bp.travel_epoch run function bracken:travel/cancel
execute if score @s bp.travel_state matches 1..3 run scoreboard players add @s bp.travel_age 1
execute if score @s bp.travel_state matches 1..3 if score @s bp.travel_age matches 200.. run function bracken:travel/cancel
execute if score @s bp.travel_state matches 1 run function bracken:travel/dispatch
execute if score @s bp.travel_state matches 3 if score @s bp.travel_mode matches 0 run function bracken:travel/standalone_resume
