data modify storage bracken:travel mob set value {success:0}
execute store result storage bracken:travel mob.caster int 1 run scoreboard players get @s bp.travel_caster
execute store result storage bracken:travel mob.cast int 1 run scoreboard players get @s bp.travel_cast
execute summon marker run function bracken:travel/scatter/mob_candidate
execute if data storage bracken:travel {mob:{success:1}} run function bracken:travel/scatter/move_mob with storage bracken:travel mob
execute unless data storage bracken:travel {mob:{success:1}} run function bracken:travel/scatter/mob_failed with storage bracken:travel mob
scoreboard players reset @s bp.travel_caster
scoreboard players reset @s bp.travel_cast
