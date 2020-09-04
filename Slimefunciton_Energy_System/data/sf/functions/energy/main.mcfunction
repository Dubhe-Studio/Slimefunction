#状态处理
execute as @e[type=armor_stand,tag=sfmachine] if score @s sfe >= @s sfeMax run tag @s add sfe_full
execute as @e[type=armor_stand,tag=sfmachine] if score @s sfe < @s sfeMax run tag @s remove sfe_full
#最低下限处理，默认为0
execute as @e[type=armor_stand,tag=sfmachine] if score @s sfe matches ..0 run scoreboard players set @s sfe 0
#最高上限处理，默认为变量sfeMax
execute as @e[type=armor_stand,tag=sfmachine] if score @s sfe > @s sfeMax run scoreboard players operation @s sfe = @s sfeMax
function sf:energy/check
#电源/用电器提示
execute as @e[type=armor_stand,tag=es,tag=!em] at @s run particle reverse_portal ~ ~ ~ 0.5 0.5 0.5 0.1 1
execute as @e[type=armor_stand,tag=em,tag=!es] at @s run particle portal ~ ~ ~ 0.5 0.5 0.5 0.1 1
#提示能量
execute as @e[type=armor_stand,tag=sfmachine] at @s run title @a[distance=..1.5] actionbar [{"text": "Energy:"},{"score":{"name":"@s","objective":"sfe"}},{"text": "/"},{"score":{"name":"@s","objective":"sfeMax"}},{"text": "J"}]
#检测周围一定半径内是否有对应机器/中继器
#es:能源，ec:中继器，em:用电器
#sfe_full标签用于检测目标机器是否满电
execute as @e[type=armor_stand,tag=es] at @s if entity @e[type=armor_stand,tag=em,tag=!sfe_out_putting,tag=!sfe_full,distance=1..9] run function sf:energy/translate