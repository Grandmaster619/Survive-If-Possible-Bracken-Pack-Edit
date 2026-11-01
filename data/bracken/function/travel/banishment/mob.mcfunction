data modify storage bracken:travel mob set value {success:0}
execute summon marker run function bracken:travel/banishment/candidate
execute if data storage bracken:travel {mob:{success:1}} run function bracken:travel/banishment/move with storage bracken:travel mob
