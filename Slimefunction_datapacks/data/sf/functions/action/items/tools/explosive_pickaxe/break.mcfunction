execute unless block ~1 ~1 ~1 #sf:exp_unbreaks run setblock ~1 ~1 ~1 air destroy
execute unless block ~1 ~1 ~ #sf:exp_unbreaks run setblock ~1 ~1 ~ air destroy
execute unless block ~1 ~1 ~-1 #sf:exp_unbreaks run setblock ~1 ~1 ~-1 air destroy
execute unless block ~ ~1 ~1 #sf:exp_unbreaks run setblock ~ ~1 ~1 air destroy
execute unless block ~ ~1 ~ #sf:exp_unbreaks run setblock ~ ~1 ~ air destroy
execute unless block ~ ~1 ~-1 #sf:exp_unbreaks run setblock ~ ~1 ~-1 air destroy
execute unless block ~-1 ~1 ~1 #sf:exp_unbreaks run setblock ~-1 ~1 ~1 air destroy
execute unless block ~-1 ~1 ~ #sf:exp_unbreaks run setblock ~-1 ~1 ~ air destroy
execute unless block ~-1 ~1 ~-1 #sf:exp_unbreaks run setblock ~-1 ~1 ~-1 air destroy
execute unless block ~1 ~ ~1 #sf:exp_unbreaks run setblock ~1 ~ ~1 air destroy
execute unless block ~1 ~ ~ #sf:exp_unbreaks run setblock ~1 ~ ~ air destroy
execute unless block ~1 ~ ~-1 #sf:exp_unbreaks run setblock ~1 ~ ~-1 air destroy
execute unless block ~ ~ ~1 #sf:exp_unbreaks run setblock ~ ~ ~1 air destroy
execute unless block ~ ~ ~ #sf:exp_unbreaks run setblock ~ ~ ~ air destroy
execute unless block ~ ~ ~-1 #sf:exp_unbreaks run setblock ~ ~ ~-1 air destroy
execute unless block ~-1 ~ ~1 #sf:exp_unbreaks run setblock ~-1 ~ ~1 air destroy
execute unless block ~-1 ~ ~ #sf:exp_unbreaks run setblock ~-1 ~ ~ air destroy
execute unless block ~-1 ~ ~-1 #sf:exp_unbreaks run setblock ~-1 ~ ~-1 air destroy
execute unless block ~1 ~-1 ~1 #sf:exp_unbreaks run setblock ~1 ~-1 ~1 air destroy
execute unless block ~1 ~-1 ~ #sf:exp_unbreaks run setblock ~1 ~-1 ~ air destroy
execute unless block ~1 ~-1 ~-1 #sf:exp_unbreaks run setblock ~1 ~-1 ~-1 air destroy
execute unless block ~ ~-1 ~1 #sf:exp_unbreaks run setblock ~ ~-1 ~1 air destroy
execute unless block ~ ~-1 ~ #sf:exp_unbreaks run setblock ~ ~-1 ~ air destroy
execute unless block ~ ~-1 ~-1 #sf:exp_unbreaks run setblock ~ ~-1 ~-1 air destroy
execute unless block ~-1 ~-1 ~1 #sf:exp_unbreaks run setblock ~-1 ~-1 ~1 air destroy
execute unless block ~-1 ~-1 ~ #sf:exp_unbreaks run setblock ~-1 ~-1 ~ air destroy
execute unless block ~-1 ~-1 ~-1 #sf:exp_unbreaks run setblock ~-1 ~-1 ~-1 air destroy

particle minecraft:explosion ~ ~1 ~ 0 0 0 5 1 force
playsound block.end_gateway.spawn block @a ~ ~ ~ 100
