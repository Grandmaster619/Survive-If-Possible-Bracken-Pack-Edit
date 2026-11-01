execute unless entity @s[type=player] run return 0
execute if score @s bp.travel_state matches ..-1 run return 0
execute if score @s bp.travel_state matches 1.. run return 0
execute if score @s bp.travel_seq matches 2147483647 run return 0
execute unless score @s bp.world_player_id matches 1.. run function bracken:player/set_player_id
$data modify storage bracken:travel scratch set value {route:"$(route)",dimension:"",capture_ok:1}
execute if data storage bracken:travel {scratch:{route:"recall"}} run data modify storage bracken:travel scratch.dimension set from storage bracken:travel selected_dimension
execute if data storage bracken:travel {scratch:{route:"astral_return"}} run data modify storage bracken:travel scratch.dimension set from storage bracken:travel selected_dimension
scoreboard players set @s bp.travel_route 0
execute if data storage bracken:travel {scratch:{route:"underdark_to_overworld"}} run scoreboard players set @s bp.travel_route 1
execute if data storage bracken:travel {scratch:{route:"brine_to_overworld"}} run scoreboard players set @s bp.travel_route 2
execute if data storage bracken:travel {scratch:{route:"dormis_to_void"}} run scoreboard players set @s bp.travel_route 3
execute if data storage bracken:travel {scratch:{route:"faewild_to_overworld"}} run scoreboard players set @s bp.travel_route 4
execute if data storage bracken:travel {scratch:{route:"faewild_to_pax"}} run scoreboard players set @s bp.travel_route 5
execute if data storage bracken:travel {scratch:{route:"glacium_to_overworld"}} run scoreboard players set @s bp.travel_route 6
execute if data storage bracken:travel {scratch:{route:"nether_to_omnidrome"}} run scoreboard players set @s bp.travel_route 7
execute if data storage bracken:travel {scratch:{route:"nether_to_sanctum"}} run scoreboard players set @s bp.travel_route 8
execute if data storage bracken:travel {scratch:{route:"nether_to_underdark"}} run scoreboard players set @s bp.travel_route 9
execute if data storage bracken:travel {scratch:{route:"omnidrome_to_nether"}} run scoreboard players set @s bp.travel_route 10
execute if data storage bracken:travel {scratch:{route:"omnidrome_to_sanctum"}} run scoreboard players set @s bp.travel_route 11
execute if data storage bracken:travel {scratch:{route:"overworld_to_faewild"}} run scoreboard players set @s bp.travel_route 12
execute if data storage bracken:travel {scratch:{route:"overworld_to_glacium"}} run scoreboard players set @s bp.travel_route 13
execute if data storage bracken:travel {scratch:{route:"overworld_to_panacea"}} run scoreboard players set @s bp.travel_route 14
execute if data storage bracken:travel {scratch:{route:"overworld_to_underdark"}} run scoreboard players set @s bp.travel_route 15
execute if data storage bracken:travel {scratch:{route:"panacea_to_overworld"}} run scoreboard players set @s bp.travel_route 16
execute if data storage bracken:travel {scratch:{route:"pax_to_faewild"}} run scoreboard players set @s bp.travel_route 17
execute if data storage bracken:travel {scratch:{route:"sanctum_to_nether"}} run scoreboard players set @s bp.travel_route 18
execute if data storage bracken:travel {scratch:{route:"underdark_to_nether"}} run scoreboard players set @s bp.travel_route 19
execute if data storage bracken:travel {scratch:{route:"varskspace_to_overworld"}} run scoreboard players set @s bp.travel_route 20
execute if data storage bracken:travel {scratch:{route:"varskspace_travel"}} run scoreboard players set @s bp.travel_route 21
execute if data storage bracken:travel {scratch:{route:"sanctum_to_omnidrome_existing"}} run scoreboard players set @s bp.travel_route 22
execute if data storage bracken:travel {scratch:{route:"sanctum_to_omnidrome_new"}} run scoreboard players set @s bp.travel_route 23
execute if data storage bracken:travel {scratch:{route:"overworld_to_brine_existing"}} run scoreboard players set @s bp.travel_route 24
execute if data storage bracken:travel {scratch:{route:"overworld_to_brine_new"}} run scoreboard players set @s bp.travel_route 25
execute if data storage bracken:travel {scratch:{route:"gateway_to_dormis_existing"}} run scoreboard players set @s bp.travel_route 26
execute if data storage bracken:travel {scratch:{route:"gateway_to_dormis_new"}} run scoreboard players set @s bp.travel_route 27
execute if data storage bracken:travel {scratch:{route:"gateway_to_brine"}} run scoreboard players set @s bp.travel_route 28
execute if data storage bracken:travel {scratch:{route:"gateway_to_end"}} run scoreboard players set @s bp.travel_route 29
execute if data storage bracken:travel {scratch:{route:"gateway_to_faewild"}} run scoreboard players set @s bp.travel_route 30
execute if data storage bracken:travel {scratch:{route:"gateway_to_glacium"}} run scoreboard players set @s bp.travel_route 31
execute if data storage bracken:travel {scratch:{route:"gateway_to_omnidrome"}} run scoreboard players set @s bp.travel_route 32
execute if data storage bracken:travel {scratch:{route:"gateway_to_overworld"}} run scoreboard players set @s bp.travel_route 33
execute if data storage bracken:travel {scratch:{route:"gateway_to_panacea"}} run scoreboard players set @s bp.travel_route 34
execute if data storage bracken:travel {scratch:{route:"gateway_to_pax"}} run scoreboard players set @s bp.travel_route 35
execute if data storage bracken:travel {scratch:{route:"gateway_to_sanctum"}} run scoreboard players set @s bp.travel_route 36
execute if data storage bracken:travel {scratch:{route:"gateway_to_varskspace"}} run scoreboard players set @s bp.travel_route 37
execute if data storage bracken:travel {scratch:{route:"gateway_to_void"}} run scoreboard players set @s bp.travel_route 38
execute if data storage bracken:travel {scratch:{route:"gateway_to_nether"}} run scoreboard players set @s bp.travel_route 39
execute if data storage bracken:travel {scratch:{route:"gateway_to_underdark"}} run scoreboard players set @s bp.travel_route 40
execute if data storage bracken:travel {scratch:{route:"sanctum_fall_to_void"}} run scoreboard players set @s bp.travel_route 41
execute if data storage bracken:travel {scratch:{route:"end_fall_to_void"}} run scoreboard players set @s bp.travel_route 42
execute if data storage bracken:travel {scratch:{route:"panacea_fall_to_void"}} run scoreboard players set @s bp.travel_route 43
execute if data storage bracken:travel {scratch:{route:"glacium_fall_to_void"}} run scoreboard players set @s bp.travel_route 44
execute if data storage bracken:travel {scratch:{route:"brine_fall_to_void"}} run scoreboard players set @s bp.travel_route 45
execute if data storage bracken:travel {scratch:{route:"varskspace_fall_to_void"}} run scoreboard players set @s bp.travel_route 46
execute if data storage bracken:travel {scratch:{route:"void_roll_1_to_end"}} run scoreboard players set @s bp.travel_route 47
execute if data storage bracken:travel {scratch:{route:"void_roll_3_to_glacium"}} run scoreboard players set @s bp.travel_route 48
execute if data storage bracken:travel {scratch:{route:"void_roll_4_to_omnidrome"}} run scoreboard players set @s bp.travel_route 49
execute if data storage bracken:travel {scratch:{route:"void_roll_5_to_panacea"}} run scoreboard players set @s bp.travel_route 50
execute if data storage bracken:travel {scratch:{route:"void_roll_6_to_void"}} run scoreboard players set @s bp.travel_route 51
execute if data storage bracken:travel {scratch:{route:"void_roll_7_to_sanctum"}} run scoreboard players set @s bp.travel_route 52
execute if data storage bracken:travel {scratch:{route:"void_roll_8_to_brine"}} run scoreboard players set @s bp.travel_route 53
execute if data storage bracken:travel {scratch:{route:"void_roll_9_to_faewild"}} run scoreboard players set @s bp.travel_route 54
execute if data storage bracken:travel {scratch:{route:"void_roll_10_to_underdark"}} run scoreboard players set @s bp.travel_route 55
execute if data storage bracken:travel {scratch:{route:"void_roll_11_to_varskspace"}} run scoreboard players set @s bp.travel_route 56
execute if data storage bracken:travel {scratch:{route:"void_roll_12_to_overworld"}} run scoreboard players set @s bp.travel_route 57
execute if data storage bracken:travel {scratch:{route:"void_roll_13_to_nether"}} run scoreboard players set @s bp.travel_route 58
execute if data storage bracken:travel {scratch:{route:"starting_dimension_omnidrome"}} run scoreboard players set @s bp.travel_route 59
execute if data storage bracken:travel {scratch:{route:"starting_dimension_glacium"}} run scoreboard players set @s bp.travel_route 60
execute if data storage bracken:travel {scratch:{route:"starting_dimension_faewild"}} run scoreboard players set @s bp.travel_route 61
execute if data storage bracken:travel {scratch:{route:"starting_dimension_panacea"}} run scoreboard players set @s bp.travel_route 62
execute if data storage bracken:travel {scratch:{route:"starting_dimension_underdark"}} run scoreboard players set @s bp.travel_route 63
execute if data storage bracken:travel {scratch:{route:"starting_dimension_end"}} run scoreboard players set @s bp.travel_route 64
execute if data storage bracken:travel {scratch:{route:"starting_dimension_brine"}} run scoreboard players set @s bp.travel_route 65
execute if data storage bracken:travel {scratch:{route:"starting_dimension_nether"}} run scoreboard players set @s bp.travel_route 66
execute if data storage bracken:travel {scratch:{route:"starting_dimension_sanctum"}} run scoreboard players set @s bp.travel_route 67
execute if data storage bracken:travel {scratch:{route:"starting_dimension_pax"}} run scoreboard players set @s bp.travel_route 68
execute if data storage bracken:travel {scratch:{route:"starting_dimension_dormis"}} run scoreboard players set @s bp.travel_route 69
execute if data storage bracken:travel {scratch:{route:"recall"}} run scoreboard players set @s bp.travel_route 70
execute if data storage bracken:travel {scratch:{route:"astral_return"}} run scoreboard players set @s bp.travel_route 71
execute if data storage bracken:travel {scratch:{route:"scatterstorm"}} run scoreboard players set @s bp.travel_route 72
execute if data storage bracken:travel {scratch:{route:"banishment"}} run scoreboard players set @s bp.travel_route 73
execute if data storage bracken:travel {scratch:{route:"enderling_controlled"}} run scoreboard players set @s bp.travel_route 74
execute if data storage bracken:travel {scratch:{route:"omni_nearest_player"}} run scoreboard players set @s bp.travel_route 75
execute if data storage bracken:travel {scratch:{route:"omnidrome_loop_bottom"}} run scoreboard players set @s bp.travel_route 76
execute if data storage bracken:travel {scratch:{route:"omnidrome_loop_top"}} run scoreboard players set @s bp.travel_route 77
execute if data storage bracken:travel {scratch:{route:"kraken_spin_push"}} run scoreboard players set @s bp.travel_route 78
execute if data storage bracken:travel {scratch:{route:"ostiarius_xp_pull"}} run scoreboard players set @s bp.travel_route 79
execute if data storage bracken:travel {scratch:{route:"admin_dialog_to_dormis"}} run scoreboard players set @s bp.travel_route 80
execute if data storage bracken:travel {scratch:{route:"admin_dialog_to_glacium"}} run scoreboard players set @s bp.travel_route 81
execute if data storage bracken:travel {scratch:{route:"admin_dialog_to_omnidrome"}} run scoreboard players set @s bp.travel_route 82
execute if data storage bracken:travel {scratch:{route:"admin_dialog_to_overworld"}} run scoreboard players set @s bp.travel_route 83
execute if data storage bracken:travel {scratch:{route:"admin_dialog_to_panacea"}} run scoreboard players set @s bp.travel_route 84
execute if data storage bracken:travel {scratch:{route:"admin_dialog_to_pax"}} run scoreboard players set @s bp.travel_route 85
execute if data storage bracken:travel {scratch:{route:"admin_dialog_to_sanctum"}} run scoreboard players set @s bp.travel_route 86
execute if data storage bracken:travel {scratch:{route:"admin_dialog_to_brine"}} run scoreboard players set @s bp.travel_route 87
execute if data storage bracken:travel {scratch:{route:"admin_dialog_to_end"}} run scoreboard players set @s bp.travel_route 88
execute if data storage bracken:travel {scratch:{route:"admin_dialog_to_faewild"}} run scoreboard players set @s bp.travel_route 89
execute if data storage bracken:travel {scratch:{route:"admin_dialog_to_nether"}} run scoreboard players set @s bp.travel_route 90
execute if data storage bracken:travel {scratch:{route:"admin_dialog_to_underdark"}} run scoreboard players set @s bp.travel_route 91
execute if data storage bracken:travel {scratch:{route:"admin_dialog_to_varskspace"}} run scoreboard players set @s bp.travel_route 92
execute if data storage bracken:travel {scratch:{route:"admin_dialog_to_void"}} run scoreboard players set @s bp.travel_route 93

execute if score @s bp.travel_route matches 0 run return 0
scoreboard players add @s bp.travel_seq 1
scoreboard players operation @s bp.travel_epoch = #session bp.travel_epoch
scoreboard players set @s bp.travel_age 0
scoreboard players set @s bp.travel_result 0
scoreboard players set @s bp.travel_mode -1
execute if data storage bracken:config {travel_mode:"standalone"} run scoreboard players set @s bp.travel_mode 0
execute if data storage bracken:config {travel_mode:"provider_required"} run scoreboard players set @s bp.travel_mode 1
execute store result storage bracken:travel scratch.id int 1 run scoreboard players get @s bp.world_player_id
execute store result storage bracken:travel scratch.request int 1 run scoreboard players get @s bp.travel_seq
execute store result storage bracken:travel scratch.mode int 1 run scoreboard players get @s bp.travel_mode
data modify storage bracken:travel scratch.source_x set from entity @s Pos[0]
data modify storage bracken:travel scratch.source_y set from entity @s Pos[1]
data modify storage bracken:travel scratch.source_z set from entity @s Pos[2]
data modify storage bracken:travel scratch.source_dimension set from entity @s Dimension
execute store result storage bracken:travel scratch.caster int 1 run scoreboard players get @s bp.travel_caster
execute store result storage bracken:travel scratch.cast int 1 run scoreboard players get @s bp.travel_cast
execute store result storage bracken:travel scratch.anchor int 1 run scoreboard players get @s bp.travel_anchor
execute if score @s bp.world_player_id = @s bp.travel_caster run data modify storage bracken:travel scratch.scatter_caster set value 1
execute summon marker run function bracken:travel/capture with storage bracken:travel scratch
function bracken:travel/store with storage bracken:travel scratch
scoreboard players set @s bp.travel_state 1
execute unless score @s bp.travel_mode matches 0..1 run return run function bracken:travel/cancel
execute if data storage bracken:travel {scratch:{dimension:""}} run return run function bracken:travel/cancel
execute unless data storage bracken:travel {scratch:{capture_ok:1}} run return run function bracken:travel/cancel
scoreboard players set @s bp.travel_state 1
