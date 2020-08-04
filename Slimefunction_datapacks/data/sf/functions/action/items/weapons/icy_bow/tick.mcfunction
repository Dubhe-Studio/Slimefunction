execute at @a[scores={sf_icy_arrow=1..}] if predicate sf:weapons/icy_bow run execute as @e[type=arrow,distance=..2,limit=1,nbt={life:0s}] run tag @s add icy_arrow
execute as @e[type=arrow,tag=icy_arrow] run function sf:action/items/weapons/icy_bow/arrow
scoreboard players reset @a sf_icy_arrow