$tp @s $(x) $(y) $(z) $(yaw) $(pitch)
$execute positioned $(x) $(y) $(z) if entity @s[distance=..0.01] at @s run function bracken:travel/routes/banishment/complete
