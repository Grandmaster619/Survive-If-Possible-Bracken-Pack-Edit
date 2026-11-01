##########################################################
# Description: Returns the player to their astral marker immediately. Used when the pack is uninstalled.
##########################################################

scoreboard players set @s[gamemode=adventure] bp.pre_astral_gamemode 2
scoreboard players set @s[gamemode=creative] bp.pre_astral_gamemode 1
scoreboard players set @s[gamemode=survival] bp.pre_astral_gamemode 0

tag @s add bp.target10
execute as @e[type=marker,tag=bp.astral_marker] at @s if score @p[tag=bp.target10] bp.world_player_id = @s bp.world_player_id run tp @p[tag=bp.target10] @s
execute as @e[type=marker,tag=bp.astral_marker] at @s if score @p[tag=bp.target10] bp.world_player_id = @s bp.world_player_id run function bracken:player/potion/astral_projection/destroy_marker
tag @s[tag=bp.target10] remove bp.target10

function bracken:player/potion/astral_projection/restore
