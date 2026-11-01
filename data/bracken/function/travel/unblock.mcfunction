execute if score @s bp.travel_route matches 1 unless dimension bracken:the_underdark run return run function bracken:travel/reset
execute if score @s bp.travel_route matches 1 unless entity @s[y=250,dy=100] run return run function bracken:travel/reset
execute if score @s bp.travel_route matches 1 run return 0
scoreboard players add @s bp.travel_age 1
execute if score @s bp.travel_age matches 20.. run function bracken:travel/reset
