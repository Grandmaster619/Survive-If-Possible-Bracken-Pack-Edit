$execute at @s unless dimension $(dimension) run return run function bracken:travel/cancel
execute unless entity @s[distance=..4] run return run function bracken:travel/cancel
execute store result score #cost bp.travel_result run function bracken:travel/validate_costs
execute unless score #cost bp.travel_result matches 1 run return run function bracken:travel/cancel
scoreboard players set #loaded bp.travel_result 1
execute if entity @s[gamemode=!spectator] run function bracken:travel/check_loaded
execute unless score #loaded bp.travel_result matches 1 run return 0
scoreboard players set #prepared bp.travel_result 1
execute if entity @s[gamemode=!spectator] run function bracken:travel/prepare_checked
execute unless score #prepared bp.travel_result matches 1.. run return run function bracken:travel/cancel
$execute at @s run function bracken:travel/complete {request:$(request),status:1}
