execute at @e[predicate=sf:weapons/icy_bow,scores={sf_icy_arrow=0..}] run function sf:action/items/weapons/icy_bow/arrow
execute as @e run execute if data entity @s {ActiveEffects:{sf_icy:{Id:2,Amplifier:127}}} run function sf:action/items/weapons/icy_bow/icy_bow
scoreboard players reset @a sf_icy_arrow