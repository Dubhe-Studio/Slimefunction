#模组信息
data modify storage datapack slimefunction append value {infor:{loadSuccess:'{"text":"成功检测到"}',module:'{"text":"模块"}',loadFailed:'{"text":"缺失或检测失败"}',name:'{"text":"[SlimeFunction] "}',namespace:'{"text":"sf"}',compatibility:'{"text":"1.17"}',version:'{"text":"a17"}'},modules:[]}
#模块设置
data modify storage datapack slimefunction.modules[{id:"sf:slimefunction"}].name set value '{"text":"slimefunction"}'
data modify storage datapack slimefunction.modules[{id:"sf:energy_api"}].name set value '{"text":"sf_energy_api"}'
#显示结果
tellraw @a [{"nbt":"slimefunction.infor.name","storage":"minecraft:datapack","interpret":true},{"text": "当前数据包版本: "},{"nbt":"slimefunction.infor.version","storage":"minecraft:datapack","interpret":true},{"text": " 兼容版本: "},{"nbt":"slimefunction.infor.compatibility","storage":"minecraft:datapack","interpret":true}]

execute if score #sf_energy_api load.status matches 1 run tellraw @a [{"nbt":"slimefunction.infor.name","storage":"minecraft:datapack","interpret":true},{"nbt":"slimefunction.infor.loadSuccess","storage":"minecraft:datapack","interpret":true},{"nbt":"slimefunction.modules[{id:\"sf:energy_api\"}].name","storage":"datapack","interpret":true},{"nbt":"slimefunction.infor.module","storage":"minecraft:datapack","interpret":true}]
execute unless score #sf_energy_api load.status matches 1 run tellraw @a [{"nbt":"slimefunction.infor.name","storage":"minecraft:datapack","interpret":true,"color": "red"},{"nbt":"slimefunction.infor.loadFailed","storage":"minecraft:datapack","interpret":true,"color":"red"},{"nbt":"slimefunction.modules[{id:\"sf:energy_api\"}].name","storage":"datapack","interpret":true,"color":"red"},{"nbt":"slimefunction.infor.module","storage":"minecraft:datapack","interpret":true,"color":"red"}]