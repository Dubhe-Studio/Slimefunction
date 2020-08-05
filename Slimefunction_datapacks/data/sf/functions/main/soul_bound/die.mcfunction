scoreboard players set @s sf_soul_death 0
experience add @s -15 levels
data modify storage sf:drop inventory prepend from entity @s Inventory[]
data remove storage sf:drop inventory[{tag:{soul_bound:1b}}]
data remove storage sf:drop inventory[{tag:{soul_bound:1b}}]
execute if data storage sf:drop inventory[0] run function sf:main/soul_bound/test_inventory
execute unless data entity @s Inventory[{Slot:0b,tag:{soul_bound:1b}}] run replaceitem entity @s container.0 air
execute unless data entity @s Inventory[{Slot:1b,tag:{soul_bound:1b}}] run replaceitem entity @s container.1 air
execute unless data entity @s Inventory[{Slot:2b,tag:{soul_bound:1b}}] run replaceitem entity @s container.2 air
execute unless data entity @s Inventory[{Slot:3b,tag:{soul_bound:1b}}] run replaceitem entity @s container.3 air
execute unless data entity @s Inventory[{Slot:4b,tag:{soul_bound:1b}}] run replaceitem entity @s container.4 air
execute unless data entity @s Inventory[{Slot:5b,tag:{soul_bound:1b}}] run replaceitem entity @s container.5 air
execute unless data entity @s Inventory[{Slot:6b,tag:{soul_bound:1b}}] run replaceitem entity @s container.6 air
execute unless data entity @s Inventory[{Slot:7b,tag:{soul_bound:1b}}] run replaceitem entity @s container.7 air
execute unless data entity @s Inventory[{Slot:8b,tag:{soul_bound:1b}}] run replaceitem entity @s container.8 air
execute unless data entity @s Inventory[{Slot:9b,tag:{soul_bound:1b}}] run replaceitem entity @s container.9 air
execute unless data entity @s Inventory[{Slot:10b,tag:{soul_bound:1b}}] run replaceitem entity @s container.10 air
execute unless data entity @s Inventory[{Slot:11b,tag:{soul_bound:1b}}] run replaceitem entity @s container.11 air
execute unless data entity @s Inventory[{Slot:12b,tag:{soul_bound:1b}}] run replaceitem entity @s container.12 air
execute unless data entity @s Inventory[{Slot:13b,tag:{soul_bound:1b}}] run replaceitem entity @s container.13 air
execute unless data entity @s Inventory[{Slot:14b,tag:{soul_bound:1b}}] run replaceitem entity @s container.14 air
execute unless data entity @s Inventory[{Slot:15b,tag:{soul_bound:1b}}] run replaceitem entity @s container.15 air
execute unless data entity @s Inventory[{Slot:16b,tag:{soul_bound:1b}}] run replaceitem entity @s container.16 air
execute unless data entity @s Inventory[{Slot:17b,tag:{soul_bound:1b}}] run replaceitem entity @s container.17 air
execute unless data entity @s Inventory[{Slot:18b,tag:{soul_bound:1b}}] run replaceitem entity @s container.18 air
execute unless data entity @s Inventory[{Slot:19b,tag:{soul_bound:1b}}] run replaceitem entity @s container.19 air
execute unless data entity @s Inventory[{Slot:20b,tag:{soul_bound:1b}}] run replaceitem entity @s container.20 air
execute unless data entity @s Inventory[{Slot:21b,tag:{soul_bound:1b}}] run replaceitem entity @s container.21 air
execute unless data entity @s Inventory[{Slot:22b,tag:{soul_bound:1b}}] run replaceitem entity @s container.22 air
execute unless data entity @s Inventory[{Slot:23b,tag:{soul_bound:1b}}] run replaceitem entity @s container.23 air
execute unless data entity @s Inventory[{Slot:24b,tag:{soul_bound:1b}}] run replaceitem entity @s container.24 air
execute unless data entity @s Inventory[{Slot:25b,tag:{soul_bound:1b}}] run replaceitem entity @s container.25 air
execute unless data entity @s Inventory[{Slot:26b,tag:{soul_bound:1b}}] run replaceitem entity @s container.26 air
execute unless data entity @s Inventory[{Slot:27b,tag:{soul_bound:1b}}] run replaceitem entity @s container.27 air
execute unless data entity @s Inventory[{Slot:28b,tag:{soul_bound:1b}}] run replaceitem entity @s container.28 air
execute unless data entity @s Inventory[{Slot:29b,tag:{soul_bound:1b}}] run replaceitem entity @s container.29 air
execute unless data entity @s Inventory[{Slot:30b,tag:{soul_bound:1b}}] run replaceitem entity @s container.30 air
execute unless data entity @s Inventory[{Slot:31b,tag:{soul_bound:1b}}] run replaceitem entity @s container.31 air
execute unless data entity @s Inventory[{Slot:32b,tag:{soul_bound:1b}}] run replaceitem entity @s container.32 air
execute unless data entity @s Inventory[{Slot:33b,tag:{soul_bound:1b}}] run replaceitem entity @s container.33 air
execute unless data entity @s Inventory[{Slot:34b,tag:{soul_bound:1b}}] run replaceitem entity @s container.34 air
execute unless data entity @s Inventory[{Slot:35b,tag:{soul_bound:1b}}] run replaceitem entity @s container.35 air
execute unless data entity @s Inventory[{Slot:-106b,tag:{soul_bound:1b}}] run replaceitem entity @s weapon.offhand air
execute unless data entity @s Inventory[{Slot:100b,tag:{soul_bound:1b}}] run replaceitem entity @s armor.feet air
execute unless data entity @s Inventory[{Slot:101b,tag:{soul_bound:1b}}] run replaceitem entity @s armor.legs air
execute unless data entity @s Inventory[{Slot:102b,tag:{soul_bound:1b}}] run replaceitem entity @s armor.chest air
execute unless data entity @s Inventory[{Slot:103b,tag:{soul_bound:1b}}] run replaceitem entity @s armor.head air
