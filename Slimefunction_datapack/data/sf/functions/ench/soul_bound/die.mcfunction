scoreboard players set @s sf_soul_death 0
data modify storage sf:drop inventory prepend from entity @s Inventory[]
data remove storage sf:drop inventory[{tag:{soul_bound:1b}}]
data remove storage sf:drop inventory[{tag:{soul_bound:1b}}]
execute if data storage sf:drop inventory[0] run function sf:ench/soul_bound/test_inventory
execute unless data entity @s Inventory[{Slot:0b,tag:{soul_bound:1b}}] run item replace entity @s container.0 with minecraft:air
execute unless data entity @s Inventory[{Slot:1b,tag:{soul_bound:1b}}] run item replace entity @s container.1 with minecraft:air
execute unless data entity @s Inventory[{Slot:2b,tag:{soul_bound:1b}}] run item replace entity @s container.2 with minecraft:air
execute unless data entity @s Inventory[{Slot:3b,tag:{soul_bound:1b}}] run item replace entity @s container.3 with minecraft:air
execute unless data entity @s Inventory[{Slot:4b,tag:{soul_bound:1b}}] run item replace entity @s container.4 with minecraft:air
execute unless data entity @s Inventory[{Slot:5b,tag:{soul_bound:1b}}] run item replace entity @s container.5 with minecraft:air
execute unless data entity @s Inventory[{Slot:6b,tag:{soul_bound:1b}}] run item replace entity @s container.6 with minecraft:air
execute unless data entity @s Inventory[{Slot:7b,tag:{soul_bound:1b}}] run item replace entity @s container.7 with minecraft:air
execute unless data entity @s Inventory[{Slot:8b,tag:{soul_bound:1b}}] run item replace entity @s container.8 with minecraft:air
execute unless data entity @s Inventory[{Slot:9b,tag:{soul_bound:1b}}] run item replace entity @s container.9 with minecraft:air
execute unless data entity @s Inventory[{Slot:10b,tag:{soul_bound:1b}}] run item replace entity @s container.10 with minecraft:air
execute unless data entity @s Inventory[{Slot:11b,tag:{soul_bound:1b}}] run item replace entity @s container.11 with minecraft:air
execute unless data entity @s Inventory[{Slot:12b,tag:{soul_bound:1b}}] run item replace entity @s container.12 with minecraft:air
execute unless data entity @s Inventory[{Slot:13b,tag:{soul_bound:1b}}] run item replace entity @s container.13 with minecraft:air
execute unless data entity @s Inventory[{Slot:14b,tag:{soul_bound:1b}}] run item replace entity @s container.14 with minecraft:air
execute unless data entity @s Inventory[{Slot:15b,tag:{soul_bound:1b}}] run item replace entity @s container.15 with minecraft:air
execute unless data entity @s Inventory[{Slot:16b,tag:{soul_bound:1b}}] run item replace entity @s container.16 with minecraft:air
execute unless data entity @s Inventory[{Slot:17b,tag:{soul_bound:1b}}] run item replace entity @s container.17 with minecraft:air
execute unless data entity @s Inventory[{Slot:18b,tag:{soul_bound:1b}}] run item replace entity @s container.18 with minecraft:air
execute unless data entity @s Inventory[{Slot:19b,tag:{soul_bound:1b}}] run item replace entity @s container.19 with minecraft:air
execute unless data entity @s Inventory[{Slot:20b,tag:{soul_bound:1b}}] run item replace entity @s container.20 with minecraft:air
execute unless data entity @s Inventory[{Slot:21b,tag:{soul_bound:1b}}] run item replace entity @s container.21 with minecraft:air
execute unless data entity @s Inventory[{Slot:22b,tag:{soul_bound:1b}}] run item replace entity @s container.22 with minecraft:air
execute unless data entity @s Inventory[{Slot:23b,tag:{soul_bound:1b}}] run item replace entity @s container.23 with minecraft:air
execute unless data entity @s Inventory[{Slot:24b,tag:{soul_bound:1b}}] run item replace entity @s container.24 with minecraft:air
execute unless data entity @s Inventory[{Slot:25b,tag:{soul_bound:1b}}] run item replace entity @s container.25 with minecraft:air
execute unless data entity @s Inventory[{Slot:26b,tag:{soul_bound:1b}}] run item replace entity @s container.26 with minecraft:air
execute unless data entity @s Inventory[{Slot:27b,tag:{soul_bound:1b}}] run item replace entity @s container.27 with minecraft:air
execute unless data entity @s Inventory[{Slot:28b,tag:{soul_bound:1b}}] run item replace entity @s container.28 with minecraft:air
execute unless data entity @s Inventory[{Slot:29b,tag:{soul_bound:1b}}] run item replace entity @s container.29 with minecraft:air
execute unless data entity @s Inventory[{Slot:30b,tag:{soul_bound:1b}}] run item replace entity @s container.30 with minecraft:air
execute unless data entity @s Inventory[{Slot:31b,tag:{soul_bound:1b}}] run item replace entity @s container.31 with minecraft:air
execute unless data entity @s Inventory[{Slot:32b,tag:{soul_bound:1b}}] run item replace entity @s container.32 with minecraft:air
execute unless data entity @s Inventory[{Slot:33b,tag:{soul_bound:1b}}] run item replace entity @s container.33 with minecraft:air
execute unless data entity @s Inventory[{Slot:34b,tag:{soul_bound:1b}}] run item replace entity @s container.34 with minecraft:air
execute unless data entity @s Inventory[{Slot:35b,tag:{soul_bound:1b}}] run item replace entity @s container.35 with minecraft:air
execute unless data entity @s Inventory[{Slot:-106b,tag:{soul_bound:1b}}] run item replace entity @s weapon.offhand with minecraft:air
execute unless data entity @s Inventory[{Slot:100b,tag:{soul_bound:1b}}] run item replace entity @s armor.feet with minecraft:air
execute unless data entity @s Inventory[{Slot:101b,tag:{soul_bound:1b}}] run item replace entity @s armor.legs with minecraft:air
execute unless data entity @s Inventory[{Slot:102b,tag:{soul_bound:1b}}] run item replace entity @s armor.chest with minecraft:air
execute unless data entity @s Inventory[{Slot:103b,tag:{soul_bound:1b}}] run item replace entity @s armor.head with minecraft:air

# 经验值处理
execute store result score #exp sf_value run data get entity @s XpLevel
xp set @s 0 levels
xp set @s 0 points
execute if score #exp sf_value matches 4..10 positioned ~ ~ ~ run function sf:ench/soul_bound/exp
execute if score #exp sf_value matches 11..20 positioned ~ ~ ~ run function sf:ench/soul_bound/exp
execute if score #exp sf_value matches 11..20 positioned ~ ~ ~ run function sf:ench/soul_bound/exp
execute if score #exp sf_value matches 21.. positioned ~1 ~0.25 ~0 run function sf:ench/soul_bound/exp
execute if score #exp sf_value matches 21.. positioned ~0.81 ~0.25 ~0.58 run function sf:ench/soul_bound/exp
execute if score #exp sf_value matches 21.. positioned ~0.33 ~0.25 ~0.95 run function sf:ench/soul_bound/exp
scoreboard players reset #exp sf_value

