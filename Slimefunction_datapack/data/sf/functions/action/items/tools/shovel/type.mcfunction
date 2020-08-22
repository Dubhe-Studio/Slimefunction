
execute if block ~1 ~1 ~1 #sf:exp_breaks positioned ~1 ~1 ~1 run function sf:action/items/tools/shovel/break
execute if block ~1 ~1 ~ #sf:exp_breaks positioned ~1 ~1 ~ run function sf:action/items/tools/shovel/break
execute if block ~1 ~1 ~-1 #sf:exp_breaks positioned ~1 ~1 ~-1 run function sf:action/items/tools/shovel/break
execute if block ~ ~1 ~1 #sf:exp_breaks positioned ~ ~1 ~1 run function sf:action/items/tools/shovel/break
execute if block ~ ~1 ~ #sf:exp_breaks positioned ~ ~1 ~ run function sf:action/items/tools/shovel/break
execute if block ~ ~1 ~-1 #sf:exp_breaks positioned ~ ~1 ~-1 run function sf:action/items/tools/shovel/break
execute if block ~-1 ~1 ~1 #sf:exp_breaks positioned ~-1 ~1 ~1 run function sf:action/items/tools/shovel/break
execute if block ~-1 ~1 ~ #sf:exp_breaks positioned ~-1 ~1 ~ run function sf:action/items/tools/shovel/break
execute if block ~-1 ~1 ~-1 #sf:exp_breaks positioned ~-1 ~1 ~-1 run function sf:action/items/tools/shovel/break
execute if block ~1 ~ ~1 #sf:exp_breaks positioned ~1 ~ ~1 run function sf:action/items/tools/shovel/break
execute if block ~1 ~ ~ #sf:exp_breaks positioned ~1 ~ ~ run function sf:action/items/tools/shovel/break
execute if block ~1 ~ ~-1 #sf:exp_breaks positioned ~1 ~ ~-1 run function sf:action/items/tools/shovel/break
execute if block ~ ~ ~1 #sf:exp_breaks positioned ~ ~ ~1 run function sf:action/items/tools/shovel/break
execute if block ~ ~ ~ #sf:exp_breaks positioned ~ ~ ~ run function sf:action/items/tools/shovel/break
execute if block ~ ~ ~-1 #sf:exp_breaks positioned ~ ~ ~-1 run function sf:action/items/tools/shovel/break
execute if block ~-1 ~ ~1 #sf:exp_breaks positioned ~-1 ~ ~1 run function sf:action/items/tools/shovel/break
execute if block ~-1 ~ ~ #sf:exp_breaks positioned ~-1 ~ ~ run function sf:action/items/tools/shovel/break
execute if block ~-1 ~ ~-1 #sf:exp_breaks positioned ~-1 ~ ~-1 run function sf:action/items/tools/shovel/break
execute if block ~1 ~-1 ~1 #sf:exp_breaks positioned ~1 ~-1 ~1 run function sf:action/items/tools/shovel/break
execute if block ~1 ~-1 ~ #sf:exp_breaks positioned ~1 ~-1 ~ run function sf:action/items/tools/shovel/break
execute if block ~1 ~-1 ~-1 #sf:exp_breaks positioned ~1 ~-1 ~-1 run function sf:action/items/tools/shovel/break
execute if block ~ ~-1 ~1 #sf:exp_breaks positioned ~ ~-1 ~1 run function sf:action/items/tools/shovel/break
execute if block ~ ~-1 ~ #sf:exp_breaks positioned ~ ~-1 ~ run function sf:action/items/tools/shovel/break
execute if block ~ ~-1 ~-1 #sf:exp_breaks positioned ~ ~-1 ~-1 run function sf:action/items/tools/shovel/break
execute if block ~-1 ~-1 ~1 #sf:exp_breaks positioned ~-1 ~-1 ~1 run function sf:action/items/tools/shovel/break
execute if block ~-1 ~-1 ~ #sf:exp_breaks positioned ~-1 ~-1 ~ run function sf:action/items/tools/shovel/break
execute if block ~-1 ~-1 ~-1 #sf:exp_breaks positioned ~-1 ~-1 ~-1 run function sf:action/items/tools/shovel/break

particle minecraft:explosion ~ ~1 ~ 0 0 0 5 1 force
playsound block.end_gateway.spawn block @a ~ ~ ~ 100
