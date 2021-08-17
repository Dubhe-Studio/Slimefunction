#模组信息
data merge storage datapack {slimefunction:{infor:{loadSuccess:'{"text":"成功检测到"}',module:'{"text":"模块"}',loadFailed:'{"text":"缺失或检测失败"}'},version:17,modules:[]}}
#模块设置
data modify storage datapack slimefunction.modules[{id:"sf:slimefunction"}].name set value '{"text":"slimefunction"}'
data modify storage datapack slimefunction.modules[{id:"sf:energy_api"}].name set value '{"text":"sf_energy_api"}'
#显示结果
execute if score #sf_energy_api load.status matches 1 run tellraw @a [{"nbt":"slimefunction.infor.loadSuccess","storage":"minecraft:datapack","interpret":true},{"nbt":"slimefunction.modules[{id:\"sf:energy_api\"}].name","storage":"datapack","interpret":true},{"nbt":"slimefunction.infor.module","storage":"minecraft:datapack","interpret":true}]
execute unless score #sf_energy_api load.status matches 1 run tellraw @a [{"nbt":"slimefunction.infor.loadFailed","storage":"minecraft:datapack","interpret":true,"color":"red"},{"nbt":"slimefunction.modules[{id:\"sf:energy_api\"}].name","storage":"datapack","interpret":true,"color":"red"},{"nbt":"slimefunction.infor.module","storage":"minecraft:datapack","interpret":true,"color":"red"}]