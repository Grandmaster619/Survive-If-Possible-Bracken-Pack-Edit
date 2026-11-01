experience add @s -7 levels
scoreboard players set @s bp.cooldown 20
$data modify storage bracken:travel casts.c$(id).paid set value 1
playsound minecraft:entity.enderman.teleport player @a[distance=..30] ~ ~ ~ 10 0
tellraw @s ["",{"selector":"@s"},{"translate":" generated [SCATTERSTORM]"}]
