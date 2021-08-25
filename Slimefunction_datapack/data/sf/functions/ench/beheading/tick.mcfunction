#随机数生成
setblock ~ 255 ~ chest
loot insert ~ 255 ~ loot sf:misc/random100
execute store result score #rand sfValue run data get block ~ 255 ~ Items[0].tag.AttributeModifiers[0].Amount
setblock ~ 255 ~ air
#tellraw @a [{"score":{"name":"#rand","objective":"sfValue"}}]

#根据砍杀生物设定基础概率
scoreboard players set @s[nbt={Item:{tag:{entityType:"minecraft:player_head"}}}] sfValue 60
scoreboard players set @s[nbt={Item:{tag:{entityType:"minecraft:creeper_head"}}}] sfValue 30
scoreboard players set @s[nbt={Item:{tag:{entityType:"minecraft:skeleton_skull"}}}] sfValue 30
scoreboard players set @s[nbt={Item:{tag:{entityType:"minecraft:zombie_head"}}}] sfValue 30
scoreboard players set @s[nbt={Item:{tag:{entityType:"minecraft:wither_skeleton_skull"}}}] sfValue 15
#根据斩首等级修正概率
execute store result score #ench_level_sf sfValue run data get entity @s Item.tag.SF_Enchantments[{id:"sf:beheading"}].lvl
execute if score #ench_level_sf sfValue matches 3 run scoreboard players add @s[nbt={Item:{tag:{entityType:"minecraft:wither_skeleton_skull"}}}] sfValue 5

scoreboard players remove #ench_level_sf sfValue 1
scoreboard players operation #chance sfValue = #ench_level_sf sfValue
scoreboard players operation #chance sfValue *= #10 sfValue
scoreboard players operation @s sfValue += #chance sfValue
#根据抢夺等级修正概率
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:looting"}] run function sf:ench/beheading/addtion_looting
#生成头颅
execute as @s if score #rand sfValue <= @s sfValue run data modify entity @s Item.id set from entity @s Item.tag.entityType
data remove entity @s Item.tag.entityType
data remove entity @s Item.tag.SF_Enchantments
data remove entity @s Item.tag.Enchantments
data remove entity @s Item.tag.needMerge
execute as @s if score #rand sfValue > @s sfValue run kill @s



