$execute as @e[type=marker,tag=bp.recall] if score @s bp.world_player_id matches $(id) at @s run function bracken:travel/routes/recall/select {id:$(id)}
