execute as @a[predicate=sf:tools/explosive_shovel,scores={sf_dmd_shovel=1..}] at @s at @e[type=item,nbt={Age:0s,PickupDelay:10s},distance=..7,sort=nearest,limit=1] run function sf:action/items/tools/shovel/type

scoreboard players reset @a sf_dmd_shovel
