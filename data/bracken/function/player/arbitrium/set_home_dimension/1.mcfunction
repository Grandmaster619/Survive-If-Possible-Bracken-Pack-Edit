execute if score @s bp.travel_state matches ..-1 run return 0
execute if score @s bp.travel_state matches 1.. run return 0
tellraw @s ["",{"translate":"Chunks Loading... Teleportation to "},{"translate":"Omnidrome","color":"green"},{"translate":" will occur in a moment. If you die before setting a spawnpoint, you will return to the overworld!"}]

execute in bracken:omnidrome run function bracken:travel/routes/starting_dimension_omnidrome/request
