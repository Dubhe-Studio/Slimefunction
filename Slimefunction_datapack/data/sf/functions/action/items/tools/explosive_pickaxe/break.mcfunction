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
