# 生成
loot spawn ~1 ~1 ~1 mine ~1 ~1 ~1 mainhand
loot spawn ~1 ~1 ~ mine ~1 ~1 ~ mainhand
loot spawn ~1 ~1 ~-1 mine ~1 ~1 ~-1 mainhand
loot spawn ~ ~1 ~1 mine ~ ~1 ~1 mainhand
loot spawn ~ ~1 ~ mine ~ ~1 ~ mainhand
loot spawn ~ ~1 ~-1 mine ~ ~1 ~-1 mainhand
loot spawn ~-1 ~1 ~1 mine ~-1 ~1 ~1 mainhand
loot spawn ~-1 ~1 ~ mine ~-1 ~1 ~ mainhand
loot spawn ~-1 ~1 ~-1 mine ~-1 ~1 ~-1 mainhand
loot spawn ~1 ~ ~1 mine ~1 ~ ~1 mainhand
loot spawn ~1 ~ ~ mine ~1 ~ ~ mainhand
loot spawn ~1 ~ ~-1 mine ~1 ~ ~-1 mainhand
loot spawn ~ ~ ~1 mine ~ ~ ~1 mainhand
loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
loot spawn ~ ~ ~-1 mine ~ ~ ~-1 mainhand
loot spawn ~-1 ~ ~1 mine ~-1 ~ ~1 mainhand
loot spawn ~-1 ~ ~ mine ~-1 ~ ~ mainhand
loot spawn ~-1 ~ ~-1 mine ~-1 ~ ~-1 mainhand
loot spawn ~1 ~-1 ~1 mine ~1 ~-1 ~1 mainhand
loot spawn ~1 ~-1 ~ mine ~1 ~-1 ~ mainhand
loot spawn ~1 ~-1 ~-1 mine ~1 ~-1 ~-1 mainhand
loot spawn ~ ~-1 ~1 mine ~ ~-1 ~1 mainhand
loot spawn ~ ~-1 ~ mine ~ ~-1 ~ mainhand
loot spawn ~ ~-1 ~-1 mine ~ ~-1 ~-1 mainhand
loot spawn ~-1 ~-1 ~1 mine ~-1 ~-1 ~1 mainhand
loot spawn ~-1 ~-1 ~ mine ~-1 ~-1 ~ mainhand
loot spawn ~-1 ~-1 ~-1 mine ~-1 ~-1 ~-1 mainhand

# 容器内物品处理
execute if block ~1 ~1 ~1 #sf:container run summon area_effect_cloud ~1 ~1 ~1 {Tags:["sf_ep_con"]}
execute if block ~1 ~1 ~ #sf:container run summon area_effect_cloud ~1 ~1 ~ {Tags:["sf_ep_con"]}
execute if block ~1 ~1 ~-1 #sf:container run summon area_effect_cloud ~1 ~1 ~-1 {Tags:["sf_ep_con"]}
execute if block ~ ~1 ~1 #sf:container run summon area_effect_cloud ~ ~1 ~1 {Tags:["sf_ep_con"]}
execute if block ~ ~1 ~ #sf:container run summon area_effect_cloud ~ ~1 ~ {Tags:["sf_ep_con"]}
execute if block ~ ~1 ~-1 #sf:container run summon area_effect_cloud ~ ~1 ~-1 {Tags:["sf_ep_con"]}
execute if block ~-1 ~1 ~1 #sf:container run summon area_effect_cloud ~-1 ~1 ~1 {Tags:["sf_ep_con"]}
execute if block ~-1 ~1 ~ #sf:container run summon area_effect_cloud ~-1 ~1 ~ {Tags:["sf_ep_con"]}
execute if block ~-1 ~1 ~-1 #sf:container run summon area_effect_cloud ~-1 ~1 ~-1 {Tags:["sf_ep_con"]}
execute if block ~1 ~ ~1 #sf:container run summon area_effect_cloud ~1 ~ ~1 {Tags:["sf_ep_con"]}
execute if block ~1 ~ ~ #sf:container run summon area_effect_cloud ~1 ~ ~ {Tags:["sf_ep_con"]}
execute if block ~1 ~ ~-1 #sf:container run summon area_effect_cloud ~1 ~ ~-1 {Tags:["sf_ep_con"]}
execute if block ~ ~ ~1 #sf:container run summon area_effect_cloud ~ ~ ~1 {Tags:["sf_ep_con"]}
execute if block ~ ~ ~ #sf:container run summon area_effect_cloud ~ ~ ~ {Tags:["sf_ep_con"]}
execute if block ~ ~ ~-1 #sf:container run summon area_effect_cloud ~ ~ ~-1 {Tags:["sf_ep_con"]}
execute if block ~-1 ~ ~1 #sf:container run summon area_effect_cloud ~-1 ~ ~1 {Tags:["sf_ep_con"]}
execute if block ~-1 ~ ~ #sf:container run summon area_effect_cloud ~-1 ~ ~ {Tags:["sf_ep_con"]}
execute if block ~-1 ~ ~-1 #sf:container run summon area_effect_cloud ~-1 ~ ~-1 {Tags:["sf_ep_con"]}
execute if block ~1 ~-1 ~1 #sf:container run summon area_effect_cloud ~1 ~-1 ~1 {Tags:["sf_ep_con"]}
execute if block ~1 ~-1 ~ #sf:container run summon area_effect_cloud ~1 ~-1 ~ {Tags:["sf_ep_con"]}
execute if block ~1 ~-1 ~-1 #sf:container run summon area_effect_cloud ~1 ~-1 ~-1 {Tags:["sf_ep_con"]}
execute if block ~ ~-1 ~1 #sf:container run summon area_effect_cloud ~ ~-1 ~1 {Tags:["sf_ep_con"]}
execute if block ~ ~-1 ~ #sf:container run summon area_effect_cloud ~ ~-1 ~ {Tags:["sf_ep_con"]}
execute if block ~ ~-1 ~-1 #sf:container run summon area_effect_cloud ~ ~-1 ~-1 {Tags:["sf_ep_con"]}
execute if block ~-1 ~-1 ~1 #sf:container run summon area_effect_cloud ~-1 ~-1 ~1 {Tags:["sf_ep_con"]}
execute if block ~-1 ~-1 ~ #sf:container run summon area_effect_cloud ~-1 ~-1 ~ {Tags:["sf_ep_con"]}
execute if block ~-1 ~-1 ~-1 #sf:container run summon area_effect_cloud ~-1 ~-1 ~-1 {Tags:["sf_ep_con"]}

execute if entity @e[tag=sf_ep_con] as @e[tag=sf_ep_con] at @s run function sf:action/items/tools/explosive_pickaxe/container

# 破坏
execute unless block ~1 ~1 ~1 #sf:exp_unbreaks run setblock ~1 ~1 ~1 air
execute unless block ~1 ~1 ~ #sf:exp_unbreaks run setblock ~1 ~1 ~ air
execute unless block ~1 ~1 ~-1 #sf:exp_unbreaks run setblock ~1 ~1 ~-1 air
execute unless block ~ ~1 ~1 #sf:exp_unbreaks run setblock ~ ~1 ~1 air
execute unless block ~ ~1 ~ #sf:exp_unbreaks run setblock ~ ~1 ~ air
execute unless block ~ ~1 ~-1 #sf:exp_unbreaks run setblock ~ ~1 ~-1 air
execute unless block ~-1 ~1 ~1 #sf:exp_unbreaks run setblock ~-1 ~1 ~1 air
execute unless block ~-1 ~1 ~ #sf:exp_unbreaks run setblock ~-1 ~1 ~ air
execute unless block ~-1 ~1 ~-1 #sf:exp_unbreaks run setblock ~-1 ~1 ~-1 air
execute unless block ~1 ~ ~1 #sf:exp_unbreaks run setblock ~1 ~ ~1 air
execute unless block ~1 ~ ~ #sf:exp_unbreaks run setblock ~1 ~ ~ air
execute unless block ~1 ~ ~-1 #sf:exp_unbreaks run setblock ~1 ~ ~-1 air
execute unless block ~ ~ ~1 #sf:exp_unbreaks run setblock ~ ~ ~1 air
execute unless block ~ ~ ~ #sf:exp_unbreaks run setblock ~ ~ ~ air
execute unless block ~ ~ ~-1 #sf:exp_unbreaks run setblock ~ ~ ~-1 air
execute unless block ~-1 ~ ~1 #sf:exp_unbreaks run setblock ~-1 ~ ~1 air
execute unless block ~-1 ~ ~ #sf:exp_unbreaks run setblock ~-1 ~ ~ air
execute unless block ~-1 ~ ~-1 #sf:exp_unbreaks run setblock ~-1 ~ ~-1 air
execute unless block ~1 ~-1 ~1 #sf:exp_unbreaks run setblock ~1 ~-1 ~1 air
execute unless block ~1 ~-1 ~ #sf:exp_unbreaks run setblock ~1 ~-1 ~ air
execute unless block ~1 ~-1 ~-1 #sf:exp_unbreaks run setblock ~1 ~-1 ~-1 air
execute unless block ~ ~-1 ~1 #sf:exp_unbreaks run setblock ~ ~-1 ~1 air
execute unless block ~ ~-1 ~ #sf:exp_unbreaks run setblock ~ ~-1 ~ air
execute unless block ~ ~-1 ~-1 #sf:exp_unbreaks run setblock ~ ~-1 ~-1 air
execute unless block ~-1 ~-1 ~1 #sf:exp_unbreaks run setblock ~-1 ~-1 ~1 air
execute unless block ~-1 ~-1 ~ #sf:exp_unbreaks run setblock ~-1 ~-1 ~ air
execute unless block ~-1 ~-1 ~-1 #sf:exp_unbreaks run setblock ~-1 ~-1 ~-1 air

particle minecraft:explosion ~ ~1 ~ 0 0 0 5 1 force
playsound block.end_gateway.spawn block @a ~ ~ ~ 100
