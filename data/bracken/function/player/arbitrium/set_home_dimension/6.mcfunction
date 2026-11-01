execute if score @s bp.travel_state matches ..-1 run return 0
execute if score @s bp.travel_state matches 1.. run return 0
tellraw @s ["",{"translate":"Chunks Loading... Teleportation to "},{"translate":"the End","color":"dark_purple"},{"translate":" will occur in a moment. If you die before setting a spawnpoint, you will return to the overworld!"}]

execute in minecraft:the_end positioned 2000 ~ 2000 run function bracken:travel/routes/starting_dimension_end/request
