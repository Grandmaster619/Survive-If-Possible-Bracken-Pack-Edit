tp @s ~ ~ ~ ~ ~
$execute if dimension $(source_dimension) run data modify storage bracken:travel scratch.dimension set value "$(source_dimension)"
execute if dimension minecraft:overworld run data modify storage bracken:travel scratch.dimension set value "minecraft:overworld"
execute if dimension minecraft:the_nether run data modify storage bracken:travel scratch.dimension set value "minecraft:the_nether"
execute if dimension minecraft:the_end run data modify storage bracken:travel scratch.dimension set value "minecraft:the_end"
execute if dimension bracken:dormis run data modify storage bracken:travel scratch.dimension set value "bracken:dormis"
execute if dimension bracken:glacium run data modify storage bracken:travel scratch.dimension set value "bracken:glacium"
execute if dimension bracken:omnidrome run data modify storage bracken:travel scratch.dimension set value "bracken:omnidrome"
execute if dimension bracken:panacea run data modify storage bracken:travel scratch.dimension set value "bracken:panacea"
execute if dimension bracken:pax run data modify storage bracken:travel scratch.dimension set value "bracken:pax"
execute if dimension bracken:sanctum run data modify storage bracken:travel scratch.dimension set value "bracken:sanctum"
execute if dimension bracken:the_brine run data modify storage bracken:travel scratch.dimension set value "bracken:the_brine"
execute if dimension bracken:the_faewild run data modify storage bracken:travel scratch.dimension set value "bracken:the_faewild"
execute if dimension bracken:the_underdark run data modify storage bracken:travel scratch.dimension set value "bracken:the_underdark"
execute if dimension bracken:varskspace run data modify storage bracken:travel scratch.dimension set value "bracken:varskspace"
execute if dimension bracken:void run data modify storage bracken:travel scratch.dimension set value "bracken:void"
execute if data storage bracken:travel {scratch:{route:"starting_dimension_omnidrome"}} store success storage bracken:travel scratch.capture_ok int 1 run spreadplayers ~ ~ 20 30 under 70 false @s
execute if data storage bracken:travel {scratch:{route:"starting_dimension_glacium"}} store success storage bracken:travel scratch.capture_ok int 1 run spreadplayers ~ ~ 20 30 under 70 false @s
execute if data storage bracken:travel {scratch:{route:"starting_dimension_faewild"}} store success storage bracken:travel scratch.capture_ok int 1 run spreadplayers ~ ~ 20 30 under 100 false @s
execute if data storage bracken:travel {scratch:{route:"starting_dimension_panacea"}} store success storage bracken:travel scratch.capture_ok int 1 run spreadplayers ~ ~ 20 30 under 300 false @s
execute if data storage bracken:travel {scratch:{route:"starting_dimension_underdark"}} store success storage bracken:travel scratch.capture_ok int 1 run spreadplayers ~ ~ 20 30 under 180 false @s
execute if data storage bracken:travel {scratch:{route:"starting_dimension_end"}} store success storage bracken:travel scratch.capture_ok int 1 run spreadplayers ~ ~ 20 30 under 200 false @s
execute if data storage bracken:travel {scratch:{route:"starting_dimension_nether"}} store success storage bracken:travel scratch.capture_ok int 1 run spreadplayers ~ ~ 20 30 under 90 false @s
execute if data storage bracken:travel {scratch:{route:"starting_dimension_sanctum"}} store success storage bracken:travel scratch.capture_ok int 1 run spreadplayers ~ ~ 20 30 under 300 false @s
execute if data storage bracken:travel {scratch:{route:"starting_dimension_pax"}} store success storage bracken:travel scratch.capture_ok int 1 run spreadplayers ~ ~ 20 30 under 500 false @s
execute if data storage bracken:travel {scratch:{route:"starting_dimension_dormis"}} store success storage bracken:travel scratch.capture_ok int 1 run spreadplayers ~ ~ 20 30 under 500 false @s
execute if data storage bracken:travel {scratch:{route:"overworld_to_brine_new"}} store success storage bracken:travel scratch.capture_ok int 1 run spreadplayers ~ ~ 20 30 under 470 false @s
execute if data storage bracken:travel {scratch:{route:"scatterstorm"}} store success storage bracken:travel scratch.capture_ok int 1 run spreadplayers ~ ~ 20 30 under 500 false @s
execute if data storage bracken:travel {scratch:{route:"banishment"}} store success storage bracken:travel scratch.capture_ok int 1 run spreadplayers ~ ~ 1 4 under 125 false @s
execute if data storage bracken:travel {scratch:{route:"scatterstorm",scatter_caster:1}} if dimension minecraft:the_nether store success storage bracken:travel scratch.capture_ok int 1 run spreadplayers ~ ~ 20 30 under 120 false @s
execute if data storage bracken:travel {scratch:{route:"scatterstorm",scatter_caster:1}} if dimension bracken:the_underdark store success storage bracken:travel scratch.capture_ok int 1 run spreadplayers ~ ~ 20 30 under 250 false @s
execute if data storage bracken:travel {scratch:{route:"overworld_to_brine_new",capture_ok:1}} at @s run tp @s ~ ~2 ~
data modify storage bracken:travel scratch.x set from entity @s Pos[0]
data modify storage bracken:travel scratch.y set from entity @s Pos[1]
data modify storage bracken:travel scratch.z set from entity @s Pos[2]
data modify storage bracken:travel scratch.yaw set from entity @s Rotation[0]
data modify storage bracken:travel scratch.pitch set from entity @s Rotation[1]
kill @s
