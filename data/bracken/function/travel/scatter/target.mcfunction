execute unless entity @s[type=player] unless data entity @s Health run return 0
execute if entity @s[type=player] if score @s bp.travel_state matches 1.. run return 0
execute if entity @s[type=player] if score @s bp.travel_state matches ..-1 run return 0
scoreboard players operation @s bp.travel_caster = #caster bp.travel_caster
scoreboard players operation @s bp.travel_cast = #cast bp.travel_cast
execute store result storage bracken:travel cast_target.caster int 1 run scoreboard players get #caster bp.travel_caster
execute store result storage bracken:travel cast_target.cast int 1 run scoreboard players get #cast bp.travel_cast
function bracken:travel/scatter/add_target with storage bracken:travel cast_target
execute if entity @s[type=player] run return run function bracken:travel/routes/scatterstorm/request
function bracken:travel/scatter/mob
