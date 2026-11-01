$execute as @e[type=marker,tag=bp.astral_marker] if score @s bp.world_player_id matches $(id) at @s run function bracken:travel/routes/astral_return/select {id:$(id)}
