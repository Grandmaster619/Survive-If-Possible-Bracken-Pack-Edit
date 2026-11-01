$execute unless data storage bracken:travel casts.c$(caster){cast:$(cast)} run return 0
$execute unless entity @a[scores={bp.world_player_id=$(caster)}] run return 0
$execute unless data storage bracken:travel casts.c$(caster){paid:1} unless entity @a[level=7..,scores={bp.world_player_id=$(caster)}] run return 0
return 1
