##########################################################
# Description: Commands that run when the astral projection effect ends to clean up effects.
# Creators: Grandmaster
##########################################################

scoreboard players set @s bp.astral_time 2
execute if score @s bp.travel_state matches 1.. run return 0
execute if score @s bp.travel_state matches ..-1 run return 0
scoreboard players set @s[gamemode=adventure] bp.pre_astral_gamemode 2
scoreboard players set @s[gamemode=creative] bp.pre_astral_gamemode 1
scoreboard players set @s[gamemode=survival] bp.pre_astral_gamemode 0
execute store result storage bracken:travel lookup.id int 1 run scoreboard players get @s bp.world_player_id
function bracken:travel/routes/astral_return/find with storage bracken:travel lookup
execute unless score @s bp.travel_state matches 1.. unless score @s bp.travel_state matches ..-1 run function bracken:player/potion/astral_projection/restore
