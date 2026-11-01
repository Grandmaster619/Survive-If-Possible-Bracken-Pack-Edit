data modify storage bracken:travel selected_dimension set value ""
data modify storage bracken:travel selected_dimension set from entity @s data.travel_dimension
execute unless score @s bp.travel_anchor matches 1.. run scoreboard players add #anchor bp.travel_anchor 1
execute unless score @s bp.travel_anchor matches 1.. run scoreboard players operation @s bp.travel_anchor = #anchor bp.travel_anchor
$scoreboard players operation @a[scores={bp.world_player_id=$(id)}] bp.travel_anchor = @s bp.travel_anchor
$execute as @a[scores={bp.world_player_id=$(id)}] run function bracken:travel/routes/recall/request
