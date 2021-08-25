summon minecraft:creeper ~ ~ ~ {Fuse:0,Silent:1b}
#playsound block.end_gateway.spawn block @a[distance=..7] ~ ~ ~ 100
kill @e[type=minecraft:arrow,limit=1,sort=nearest,distance=..1,tag=sf_explosive_arrow]
kill @s
