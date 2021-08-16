summon item ~ ~0.5 ~ {Item:{id:"minecraft:tnt",Count:1b},Tags:["sf_soul_bound_spawn"]}
data modify entity @e[type=item,distance=..1,limit=1,nbt={Item:{id:"minecraft:tnt"}}] Item set from entity @s Item.tag.playerData.Inventory[0]
