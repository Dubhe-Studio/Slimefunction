function sf:action/items/weapons/icy_bow/get_uuid
execute at @a[scores={sf_icy_arrow=1..},predicate=sf:weapons/icy_bow] as @e[type=arrow,sort=nearest,limit=1,nbt={inGround:0b}] run function sf:action/items/weapons/icy_bow/uuid
execute as @e[tag=sf_icy_arrow,sort=nearest,limit=1,nbt={inGround:0b}] at @s run function sf:action/items/weapons/icy_bow/icy_arrow
execute as @e[tag=sf_icy_arrow,sort=nearest,limit=1,nbt={inGround:1b}] at @s run function sf:action/items/weapons/icy_bow/clear
execute at @e[tag=sf_icy_aec] as @p[distance=..1] run function sf:action/items/weapons/icy_bow/owner
# execute at @e[tag=sf_icy_aec] positioned ~ ~-1 ~ as @a[distance=..1] run function sf:action/items/weapons/icy_bow/icy_bow
execute as @e[tag=sf_icy_aec] at @s run tp @s ^ ^ ^1 
scoreboard players reset @a sf_icy_arrow

# execute if entity @a[predicate=sf:weapons/icy_bow_in] run say 1
