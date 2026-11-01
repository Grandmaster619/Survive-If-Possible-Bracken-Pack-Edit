tp @s ~ ~ ~ ~ ~
execute store success storage bracken:travel mob.success int 1 run spreadplayers ~ ~ 20 30 under 500 false @s
data modify storage bracken:travel mob.x set from entity @s Pos[0]
data modify storage bracken:travel mob.y set from entity @s Pos[1]
data modify storage bracken:travel mob.z set from entity @s Pos[2]
data modify storage bracken:travel mob.yaw set from entity @s Rotation[0]
data modify storage bracken:travel mob.pitch set from entity @s Rotation[1]
kill @s
