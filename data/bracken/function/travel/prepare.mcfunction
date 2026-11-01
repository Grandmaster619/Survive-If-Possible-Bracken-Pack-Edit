$execute unless score @s bp.travel_seq matches $(request) run return 0
execute unless score @s bp.travel_epoch = #session bp.travel_epoch run return 0
execute unless score @s bp.travel_state matches 2 run return 0
execute unless score @s bp.travel_mode matches 1 run return 0
execute store result score #cost bp.travel_result run function bracken:travel/validate_costs
execute unless score #cost bp.travel_result matches 1 run return run function bracken:travel/cancel
scoreboard players set @s bp.travel_state 3
scoreboard players set #prepared bp.travel_result 1
execute if entity @s[gamemode=!spectator] run function bracken:travel/prepare_checked
execute unless score #prepared bp.travel_result matches 1.. run return run function bracken:travel/cancel
$adapt:brackentravel commit $(request)
