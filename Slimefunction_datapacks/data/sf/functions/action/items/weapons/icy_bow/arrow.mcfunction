summon area_effect_cloud ~ ~ ~ {Duration:10,Tags:["icy_aec"]}
tp @e[type=area_effect_cloud,sort=nearest,limit=1] @s
execute at @e[tag=icy_aec,sort=nearest,limit=1] as @a[distance=..1] at @s run function sf:action/items/weapons/icy_bow/icy_bow
tp @e[type=area_effect_cloud,sort=nearest,limit=1] ^ ^ ^ 