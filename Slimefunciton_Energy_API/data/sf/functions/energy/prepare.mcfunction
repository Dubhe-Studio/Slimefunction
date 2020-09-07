tag @s add sfe_outputting
scoreboard players operation #temp sfe = @s sfeOut
scoreboard players operation @s sfe -= @s sfeOut
execute as @e[type=armor_stand,tag=em,tag=!sfe_full,tag=!sfe_outputting,distance=1..5,limit=1,sort=random] run scoreboard players operation @s sfe += #temp sfe
scoreboard players set #temp sfe 0
tag @s remove sfe_outputting