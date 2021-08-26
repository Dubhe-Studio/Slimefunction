advancement revoke @s only sf:player/eat/food/cookie/fortune
scoreboard players set #random_min sfValue 1
scoreboard players set #random_max sfValue 10
loot spawn ~ ~ ~ loot sf:misc/random_var
execute store result score #sf_fortune_cookie_value sfValue run data get entity @e[type=item,limit=1,sort=nearest,distance=0] Item.tag.AttributeModifiers[{AttributeName:"minecraft:generic.luck"}].Amount 1
kill @e[type=item,limit=1,sort=nearest,distance=0]
#随机tellraw
execute if score #sf_fortune_cookie_value sfValue matches 1 run tellraw @s ["§6明天你会被苦力怕炸死"]
