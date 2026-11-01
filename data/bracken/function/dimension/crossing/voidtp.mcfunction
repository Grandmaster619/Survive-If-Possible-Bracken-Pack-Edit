##########################################################
# Description: Assigns a dimension to tp the player after falling under void
#   by Bracken
##########################################################

execute if score @s bp.travel_state matches ..-1 run return 0
execute if score @s bp.travel_state matches 1.. run return 0
execute store result score @s bp.dimension run random value 1..13
execute if score @s bp.dimension matches 1 in minecraft:the_end positioned ~ 60.0 ~ rotated as @s run function bracken:travel/routes/void_roll_1_to_end/request
execute if score @s bp.dimension matches 3 in bracken:glacium positioned ~ 280.0 ~ rotated as @s run function bracken:travel/routes/void_roll_3_to_glacium/request
execute if score @s bp.dimension matches 4 in bracken:omnidrome positioned ~ 100.0 ~ rotated as @s run function bracken:travel/routes/void_roll_4_to_omnidrome/request
execute if score @s bp.dimension matches 5 in bracken:panacea positioned ~ 80.0 ~ rotated as @s run function bracken:travel/routes/void_roll_5_to_panacea/request
execute if score @s bp.dimension matches 6 in bracken:void positioned ~ 265.0 ~ rotated as @s run function bracken:travel/routes/void_roll_6_to_void/request
execute if score @s bp.dimension matches 7 in bracken:sanctum positioned ~ 130.0 ~ rotated as @s run function bracken:travel/routes/void_roll_7_to_sanctum/request
execute if score @s bp.dimension matches 8 in bracken:the_brine positioned ~ 490.0 ~ rotated as @s run function bracken:travel/routes/void_roll_8_to_brine/request
execute if score @s bp.dimension matches 9 in bracken:the_faewild positioned ~ 80.0 ~ rotated as @s run function bracken:travel/routes/void_roll_9_to_faewild/request
execute if score @s bp.dimension matches 10 in bracken:the_underdark positioned ~ 150.0 ~ rotated as @s run function bracken:travel/routes/void_roll_10_to_underdark/request
execute if score @s bp.dimension matches 11 in bracken:varskspace positioned ~ 160.0 ~ rotated as @s run function bracken:travel/routes/void_roll_11_to_varskspace/request
execute if score @s bp.dimension matches 12 in minecraft:overworld positioned ~ 70.0 ~ rotated as @s run function bracken:travel/routes/void_roll_12_to_overworld/request
execute if score @s bp.dimension matches 13 in minecraft:the_nether positioned ~ 70.0 ~ rotated as @s run function bracken:travel/routes/void_roll_13_to_nether/request
