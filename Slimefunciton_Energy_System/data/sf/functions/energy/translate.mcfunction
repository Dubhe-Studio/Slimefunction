#本函数用于标记传电
#标记开始
tag @s add sfe_out_putting
#在两个标记之间调用函数
#先储存电源所有相关变量至一个库 #source_temp
#若输出的能量多于所拥有的能量则只发送已有的能量
execute if score @s sfe <= @s sfeOut run scoreboard players operation #source_temp sfeTemp = @s sfe
#若已拥有的能量多于输出的能量则发送最大输出的能量
execute if score @s sfe > @s sfeOut run scoreboard players operation #source_temp sfeTemp = @s sfeOut
#使用另一个库 #target_temp 进行运算
#先储存用电器最大电量Emax
execute as @e[type=armor_stand,tag=!sfe_out_putting,distance=1..9] run scoreboard players operation #target_temp sfeTemp = @s sfeMax
#利用 Emax - E = △E来获得能量减少量
execute as @e[type=armor_stand,tag=!sfe_out_putting,distance=1..9] run scoreboard players operation #target_temp sfeTemp -= @s sfe
#若用电器能量超过最大存储量则清零减少量
execute as @e[type=armor_stand,tag=!sfe_out_putting,distance=1..9] if score @s sfe > @s sfeMax run scoreboard players set #target_temp sfeTemp 0
#用另一个库 #DeltaE 来储存真实变化量，使传输电力更加真实
#若用电器能量减少量超过能源提供的能量，则真实传输量为传入量
execute as @e[type=armor_stand,tag=!sfe_out_putting,distance=1..9] if score #target_temp sfeTemp > #source_temp sfeTemp run scoreboard players operation #deltaE sfeTemp = #source_temp sfeTemp
#若用电器能量减少量不超过能源提供的能量，则真实能量为消耗量
execute as @e[type=armor_stand,tag=!sfe_out_putting,distance=1..9] if score #target_temp sfeTemp <= #source_temp sfeTemp run scoreboard players operation #deltaE sfeTemp = #target_temp sfeTemp
#将真实电量加赋值于用电器，将真实电量减负值于电源
execute as @e[type=armor_stand,tag=!sfe_out_putting,distance=1..9] run scoreboard players operation @s sfe += #deltaE sfeTemp
scoreboard players operation @s sfe -= #deltaE sfeTemp
#标记结束
tag @s remove sfe_out_putting