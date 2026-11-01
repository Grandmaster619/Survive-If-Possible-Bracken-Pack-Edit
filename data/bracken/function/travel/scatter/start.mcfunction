$execute if data storage bracken:travel casts.c$(id) run return 0
execute if score #cast bp.travel_cast matches 2147483647 run return 0
scoreboard players add #cast bp.travel_cast 1
$scoreboard players set #caster bp.travel_caster $(id)
$data modify storage bracken:travel casts.c$(id) set value {pending:1,paid:0,success:0}
$execute store result storage bracken:travel casts.c$(id).cast int 1 run scoreboard players get #cast bp.travel_cast
scoreboard players set @s bp.travel_pending 1
execute as @e[distance=..20,type=!marker] rotated as @s run function bracken:travel/scatter/target
$data modify storage bracken:travel finish set value {caster:$(id),status:0}
execute store result storage bracken:travel finish.cast int 1 run scoreboard players get #cast bp.travel_cast
function bracken:travel/scatter/finish with storage bracken:travel finish
