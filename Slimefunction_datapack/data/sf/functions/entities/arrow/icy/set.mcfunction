summon minecraft:arrow ~ ~ ~ {Tags:["sf_icy_arrow"],Passengers:[{id:"minecraft:marker",Tags:["sf_icy_arrow_target","sf_entity_tick"]}]}
data modify entity @e[distance=..1,sort=nearest,limit=1,tag=sf_icy_arrow] Motion set from entity @s Motion
kill @s
