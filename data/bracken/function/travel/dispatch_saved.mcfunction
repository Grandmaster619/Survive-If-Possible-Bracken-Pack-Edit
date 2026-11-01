$execute unless score @s bp.travel_seq matches $(request) run return run function bracken:travel/cancel
$execute at @s unless dimension $(source_dimension) run return run function bracken:travel/cancel
$execute in $(source_dimension) positioned $(source_x) $(source_y) $(source_z) unless entity @s[distance=..16] run return run function bracken:travel/cancel
execute if score @s bp.travel_route matches 1 unless entity @s[y=250,dy=100] run return run function bracken:travel/cancel
$execute if score @s bp.travel_mode matches 0 in $(dimension) positioned $(x) $(y) $(z) rotated $(yaw) $(pitch) run return run function bracken:travel/standalone {request:$(request),dimension:"$(dimension)"}
$execute if score @s bp.travel_mode matches 1 in $(dimension) positioned $(x) $(y) $(z) rotated $(yaw) $(pitch) run return run function bracken:travel/submit {route:"$(route)",request:$(request)}
function bracken:travel/cancel
