advancement revoke @s only sf:player/eat/food/fortune_cookie
scoreboard players set #random_min sfValue 1
scoreboard players set #random_max sfValue 10
loot spawn ~ ~ ~ loot sf:misc/random_var
#随机tellraw
execute if entity @e[type=item,limit=1,sort=nearest,scores={sfValue=1..10},distance=..0.01] run tellraw @s ["§6明天你会被苦力怕炸死"]

kill @e[type=item,limit=1,sort=nearest,scores={sfValue=1..},distance=..0.01]