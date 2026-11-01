execute store result score #duration bp.travel_age run random value 5..6
execute store result score #amplifier bp.travel_age run random value 2..3
execute store result storage bracken:travel banishment.duration int 1 run scoreboard players get #duration bp.travel_age
execute store result storage bracken:travel banishment.amplifier int 1 run scoreboard players get #amplifier bp.travel_age
function bracken:travel/routes/banishment/effects with storage bracken:travel banishment
