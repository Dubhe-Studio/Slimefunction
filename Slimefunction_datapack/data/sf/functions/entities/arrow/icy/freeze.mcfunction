playsound block.glass.break block @a[distance=..10] ~ ~ ~ 100
particle minecraft:block ice ~ ~ ~ 0.25 1 0.25 0.5 100 normal
effect give @s minecraft:slowness 2 127 true
effect give @s minecraft:jump_boost 2 128 true
#playsound block.end_gateway.spawn block @a[distance=..7] ~ ~ ~ 100
kill @e[type=minecraft:arrow,limit=1,sort=nearest,distance=..1,tag=sf_icy_arrow]
kill @s
