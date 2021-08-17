schedule clear sf:tick
execute if score #slimefunction_energy_api load.status matches 1 run scoreboard players set #slimefunction_datapck load.status 1
execute if score #slimefunction_datapck load.status matches 1 run tellraw @a ["§a已经成功识别到相关依赖slimefunction_ennergy_api"]
execute if score #slimefunction_datapck load.status matches 1 run function sf:init
execute unless score #slimefunction_datapck load.status matches 1 run tellraw @a ["§c未识别到slimefunction_energy_api，无法正确初始化slimefunction_datapck"]
