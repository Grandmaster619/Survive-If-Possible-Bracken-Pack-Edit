execute if score @s bp.travel_route matches 70 unless entity @s[level=33..] run return 0
execute if score @s bp.travel_route matches 72 run return run function bracken:travel/scatter/validate_player
return 1
