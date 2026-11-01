tellraw @s ["",{"selector":"@s"},{"translate":" generated [RECALL]"}]
playsound minecraft:entity.player.splash.high_speed player @a[distance=..30] ~ ~ ~ 10 0
experience add @s -33 levels
tag @s remove bp.recall_wait
tag @s remove bp.recall_void
