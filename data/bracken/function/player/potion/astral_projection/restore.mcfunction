##########################################################
# Description: Restores the player's game mode and applies the astral cooldown.
##########################################################

gamemode adventure @s[scores={bp.pre_astral_gamemode=2}]
gamemode creative @s[scores={bp.pre_astral_gamemode=1}]
gamemode survival @s[scores={bp.pre_astral_gamemode=0}]
effect clear @s glowing
scoreboard players set @s bp.astral_time 10
tag @s add bp.astral_cooldown
effect give @s slowness 10 3 true
