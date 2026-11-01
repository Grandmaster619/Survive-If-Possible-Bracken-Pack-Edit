execute unless data storage bracken:config travel_mode run data modify storage bracken:config travel_mode set value "standalone"
execute as @a[scores={bp.travel_state=1..3}] run function bracken:travel/cancel
scoreboard players add #session bp.travel_epoch 1
data modify storage bracken:travel players set value {}
execute as @a run function bracken:travel/reset
