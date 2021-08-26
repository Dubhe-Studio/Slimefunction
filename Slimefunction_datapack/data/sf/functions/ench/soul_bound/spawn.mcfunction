summon item ~ -60 ~ {NoGravity:1b,Item:{id:"minecraft:tnt",Count:1b},Tags:["sf_soul_bound_spawn"]}
execute positioned ~ -60 ~ run data modify entity @e[type=item,distance=..1,limit=1,tag=sf_soul_bound_spawn,nbt={Item:{id:"minecraft:tnt"}}] Item set from entity @s Item.tag.playerData.Inventory[0]
