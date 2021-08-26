execute as @s[tag=!sf_uid] run function sf:player/uid/set
execute as @s[scores={sf_bow=1..},predicate=sf:weapons/explosive_bow] run function sf:player/use/weapons/explosive_bow
execute as @s[scores={sf_bow=1..},predicate=sf:weapons/icy_bow] run function sf:player/use/weapons/icy_bow
execute as @s[scores={sf_dmd_pickaxe=1..},predicate=sf:tools/explosive_pickaxe] at @s at @e[type=item,nbt={Age:0s,PickupDelay:10s},distance=..7,sort=nearest,limit=1] run function sf:player/use/tools/explosive_pickaxe/break
execute as @s[scores={sf_dmd_pickaxe=1..},predicate=sf:tools/smelter_pickaxe] at @s as @e[type=item,nbt={Age:0s,PickupDelay:10s},distance=..7,sort=nearest,limit=1] at @s run function sf:player/use/tools/smelter_pickaxe/type
execute as @s[scores={sf_dmd_shovel=1..},predicate=sf:tools/explosive_shovel] at @s at @e[type=item,nbt={Age:0s,PickupDelay:10s},distance=..7,sort=nearest,limit=1] run function sf:player/use/tools/explosive_shovel/type

scoreboard players reset @s sf_bow
scoreboard players reset @s sf_dmd_pickaxe
scoreboard players reset @s sf_dmd_shovel

