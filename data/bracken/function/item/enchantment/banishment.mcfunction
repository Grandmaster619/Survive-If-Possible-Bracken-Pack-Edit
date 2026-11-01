execute if entity @s[type=#bracken:boss] run return 0
execute if entity @s[tag=bp.boss] run return 0
execute if entity @s[type=player] rotated as @s run return run function bracken:travel/routes/banishment/request
execute rotated as @s run function bracken:travel/banishment/mob
