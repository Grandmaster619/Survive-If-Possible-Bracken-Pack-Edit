execute store result score #cost bp.travel_result run function bracken:travel/validate_costs
execute unless score #cost bp.travel_result matches 1 run return run function bracken:travel/cancel
tp @s ~ ~ ~ ~ ~
$execute at @s unless dimension $(dimension) run return run function bracken:travel/cancel
execute unless entity @s[distance=..0.01] run return run function bracken:travel/cancel
scoreboard players set @s bp.travel_state 3
$function bracken:travel/standalone_prepare {request:$(request),dimension:"$(dimension)"}
