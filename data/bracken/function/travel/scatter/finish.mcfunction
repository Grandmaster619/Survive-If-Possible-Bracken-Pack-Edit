$execute unless data storage bracken:travel casts.c$(caster){cast:$(cast)} run return 0
$execute store result score #pending bp.travel_pending run data get storage bracken:travel casts.c$(caster).pending
scoreboard players remove #pending bp.travel_pending 1
$execute store result storage bracken:travel casts.c$(caster).pending int 1 run scoreboard players get #pending bp.travel_pending
$data modify storage bracken:travel cast_status set value $(status)
$execute if data storage bracken:travel {cast_status:1} run data modify storage bracken:travel casts.c$(caster).success set value 1
$execute as @a[scores={bp.world_player_id=$(caster)}] at @s run function bracken:travel/scatter/settle {id:$(caster)}
