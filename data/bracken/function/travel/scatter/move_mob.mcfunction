$tp @s $(x) $(y) $(z) $(yaw) $(pitch)
$execute positioned $(x) $(y) $(z) unless entity @s[distance=..0.01] run return run function bracken:travel/scatter/finish {caster:$(caster),cast:$(cast),status:0}
$function bracken:travel/scatter/finish {caster:$(caster),cast:$(cast),status:1}
