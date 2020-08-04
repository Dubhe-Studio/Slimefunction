summon area_effect_cloud ~ ~ ~ {Duration:10,Tags:["icy_aec"]}
execute at @e[tag=icy_aec,sort=nearest,limit=1] as @a[distance=..1] at @s run function sf:action/items/weapons/icy_bow/icy_bow
