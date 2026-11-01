$execute unless data storage bracken:travel casts.c$(id) run return run scoreboard players set @s bp.travel_pending 0
$execute if data storage bracken:travel casts.c$(id){success:1,paid:0} run function bracken:travel/scatter/charge {id:$(id)}
$execute store result score #pending bp.travel_pending run data get storage bracken:travel casts.c$(id).pending
$execute if score #pending bp.travel_pending matches ..0 run data remove storage bracken:travel casts.c$(id)
execute if score #pending bp.travel_pending matches ..0 run scoreboard players set @s bp.travel_pending 0
$execute if score @s bp.travel_pending matches 201.. run data remove storage bracken:travel casts.c$(id)
execute if score @s bp.travel_pending matches 201.. run scoreboard players set @s bp.travel_pending 0
