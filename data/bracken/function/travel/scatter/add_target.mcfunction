$execute store result score #pending bp.travel_pending run data get storage bracken:travel casts.c$(caster).pending
scoreboard players add #pending bp.travel_pending 1
$execute store result storage bracken:travel casts.c$(caster).pending int 1 run scoreboard players get #pending bp.travel_pending
