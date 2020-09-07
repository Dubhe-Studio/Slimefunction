#es表示电源，em表示用电器
execute as @e[type=armor_stand,tag=es] at @s if score @s sfe > @s sfeZero if entity @e[type=armor_stand,tag=em,tag=!sfe_full,distance=1..5] run function sf:energy/prepare
#电源和用电器粒子状态
execute as @e[type=armor_stand,tag=es] at @s run particle cloud ~ ~ ~ 0.5 0.5 0.5 0.1 1
execute as @e[type=armor_stand,tag=em] at @s run particle crimson_spore ~ ~ ~ 0.5 0.5 0.5 0.1 1
#提示能量
execute as @e[type=armor_stand,tag=sfmachine] at @s run title @a[distance=..1.5] actionbar [{"text": "Energy:"},{"score":{"name":"@s","objective":"sfe"}},{"text": "/"},{"score":{"name":"@s","objective":"sfeMax"}},{"text": "J"}]
#上下限
execute as @e[type=armor_stand,tag=sfmachine] if score @s sfe >= @s sfeMax run tag @s add sfe_full
execute as @e[type=armor_stand,tag=sfmachine] if score @s sfe > @s sfeMax run scoreboard players operation @s sfe = @s sfeMax
execute as @e[type=armor_stand,tag=sfmachine] if score @s sfe > @s sfeMax run scoreboard players operation @s sfe = @s sfeMax
execute as @e[type=armor_stand,tag=sfmachine] if score @s sfe < @s sfeMax run tag @s remove sfe_full
execute as @e[type=armor_stand,tag=sfmachine] if score @s sfe matches ..0 run scoreboard players set @s sfe 0