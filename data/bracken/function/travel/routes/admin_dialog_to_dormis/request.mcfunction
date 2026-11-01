execute if score @s bp.travel_state matches ..-1 run return 0
execute if score @s bp.travel_state matches 1.. run return 0
function bracken:travel/request {route:"admin_dialog_to_dormis"}
