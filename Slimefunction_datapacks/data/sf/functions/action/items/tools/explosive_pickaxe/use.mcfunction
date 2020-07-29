# 破坏
execute at @e[type=item,nbt={Age:0s,PickupDelay:10s},distance=..6,sort=nearest,limit=1] run function sf:action/items/tools/explosive_pickaxe/break

# 重置计分板
scoreboard players reset @s sf_exp_pick