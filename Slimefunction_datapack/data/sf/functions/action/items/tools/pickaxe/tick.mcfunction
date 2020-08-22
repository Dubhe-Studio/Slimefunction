execute as @a[predicate=sf:tools/explosive_pickaxe,scores={sf_dmd_pickaxe=1..}] at @s at @e[type=item,nbt={Age:0s,PickupDelay:10s},distance=..7,sort=nearest,limit=1] run function sf:action/items/tools/pickaxe/break
execute at @a[predicate=sf:tools/smelter_pickaxe,scores={sf_dmd_pickaxe=1..}] as @e[type=item,nbt={Age:0s,PickupDelay:10s},distance=..7,sort=nearest,limit=1] at @s run function sf:action/items/tools/pickaxe/type

scoreboard players reset @a sf_dmd_pickaxe
