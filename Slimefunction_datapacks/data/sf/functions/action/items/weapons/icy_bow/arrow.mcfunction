summon area_effect_cloud ~ ~ ~ {Duration:200,Tags:["icy_aec"]}
tp @e[tag=icy_aec,limit=1] @s
tag @e[type=area_effect_cloud] add icy_aec_will
tag @e[type=area_effect_cloud] remove icy_aec_will
execute at @e[tag=icy_aec_will] run function sf:action/items/weapons/icy_bow/icy_bow
kill @e[tag=icy_aec_will]