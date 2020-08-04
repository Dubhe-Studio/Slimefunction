execute at @a[scores={sf_icy_arrow=1..},predicate=sf:weapons/icy_bow] as @e[type=arrow,distance=..2,limit=1,nbt={life:0s}] run tag @s add icy_arrow
execute as @e[predicate=sf:weapons/icy_bow_in] run say 1


