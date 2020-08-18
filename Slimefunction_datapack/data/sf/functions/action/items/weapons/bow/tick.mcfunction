execute at @a[scores={sf_bow=1..},predicate=sf:weapons/explosive_bow] as @e[type=arrow,sort=nearest,limit=1,nbt={inGround:0b},nbt=!{LeftOwner:1b}] run tag @s add sf_explosive_arrow
execute at @a[scores={sf_bow=1..},predicate=sf:weapons/icy_bow] as @e[type=arrow,sort=nearest,limit=1,nbt={inGround:0b},nbt=!{LeftOwner:1b}] run tag @s add sf_icy_arrow
scoreboard players reset @a sf_bow
