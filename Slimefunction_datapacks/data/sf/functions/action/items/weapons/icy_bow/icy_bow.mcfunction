playsound block.glass.break block @a[distance=..10] ~ ~1 ~
playsound block.glass.break block @a[distance=..10] ~ ~ ~
particle minecraft:block ice ~ ~ ~ 0.25 1 0.25 0.5 100 normal
effect give @e[sort=nearest,limit=1] minecraft:slowness 2 127 true
effect give @e[sort=nearest,limit=1] minecraft:jump_boost 2 128 true
kill @e[tag=icy_aec,limit=1,sort=nearest]

advancement revoke @s only sf:icy_bow