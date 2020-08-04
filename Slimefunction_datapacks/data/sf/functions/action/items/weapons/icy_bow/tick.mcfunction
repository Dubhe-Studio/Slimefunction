execute at @a[scores={sf_icy_arrow=1..},predicate=sf:weapons/icy_bow] as @e[type=arrow,distance=..2,limit=1,nbt={life:0s}] run tag @s add icy_arrow
# execute as @e[type=arrow,tag=icy_arrow,nbt={life:0s}] at @s run function sf:action/items/weapons/icy_bow/arrow
# scoreboard players reset @a sf_icy_arrow
# execute as @a[predicate=sf:weapons/icy_bow_in] at @s run function sf:action/items/weapons/icy_bow/icy_bow


execute as @e if predicate sf:weapons/icy_bow_in run say 1