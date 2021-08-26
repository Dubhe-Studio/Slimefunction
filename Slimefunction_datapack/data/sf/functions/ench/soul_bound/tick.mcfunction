#获取死亡玩家uid
setblock ~ 0 ~ minecraft:chest
execute store result score #sf_uid_compare sfValue run data get entity @s Item.tag.AttributeModifiers[0].Amount
setblock ~ 0 ~ minecraft:bedrock
#比较uid
execute as @a[tag=sf_uid] run scoreboard players operation @s sfValue = @s sfUid
execute as @a[tag=sf_uid] run scoreboard players operation @s sfValue -= #sf_uid_compare sfValue
#指定目标玩家tag=sf_soul_bound_target
execute as @a[scores={sfValue=0}] run tag @s add sf_soul_bound_target

#穷举以获取灵魂绑定工具个数
execute if data entity @s Item.tag.playerData.Inventory[0].tag.SF_Enchantments[{id:"sf:soul_bound"}] run scoreboard players add #sf_soul_bound_tools_count sfValue 1

execute if data entity @s Item.tag.playerData.Inventory[1].tag.SF_Enchantments[{id:"sf:soul_bound"}] run scoreboard players add #sf_soul_bound_tools_count sfValue 1

execute if data entity @s Item.tag.playerData.Inventory[2].tag.SF_Enchantments[{id:"sf:soul_bound"}] run scoreboard players add #sf_soul_bound_tools_count sfValue 1

execute if data entity @s Item.tag.playerData.Inventory[3].tag.SF_Enchantments[{id:"sf:soul_bound"}] run scoreboard players add #sf_soul_bound_tools_count sfValue 1

execute if data entity @s Item.tag.playerData.Inventory[4].tag.SF_Enchantments[{id:"sf:soul_bound"}] run scoreboard players add #sf_soul_bound_tools_count sfValue 1

execute if data entity @s Item.tag.playerData.Inventory[5].tag.SF_Enchantments[{id:"sf:soul_bound"}] run scoreboard players add #sf_soul_bound_tools_count sfValue 1

execute if data entity @s Item.tag.playerData.Inventory[6].tag.SF_Enchantments[{id:"sf:soul_bound"}] run scoreboard players add #sf_soul_bound_tools_count sfValue 1

execute if data entity @s Item.tag.playerData.Inventory[7].tag.SF_Enchantments[{id:"sf:soul_bound"}] run scoreboard players add #sf_soul_bound_tools_count sfValue 1

execute if data entity @s Item.tag.playerData.Inventory[8].tag.SF_Enchantments[{id:"sf:soul_bound"}] run scoreboard players add #sf_soul_bound_tools_count sfValue 1

execute if data entity @s Item.tag.playerData.Inventory[9].tag.SF_Enchantments[{id:"sf:soul_bound"}] run scoreboard players add #sf_soul_bound_tools_count sfValue 1

execute if data entity @s Item.tag.playerData.Inventory[10].tag.SF_Enchantments[{id:"sf:soul_bound"}] run scoreboard players add #sf_soul_bound_tools_count sfValue 1

execute if data entity @s Item.tag.playerData.Inventory[11].tag.SF_Enchantments[{id:"sf:soul_bound"}] run scoreboard players add #sf_soul_bound_tools_count sfValue 1

execute if data entity @s Item.tag.playerData.Inventory[12].tag.SF_Enchantments[{id:"sf:soul_bound"}] run scoreboard players add #sf_soul_bound_tools_count sfValue 1

execute if data entity @s Item.tag.playerData.Inventory[13].tag.SF_Enchantments[{id:"sf:soul_bound"}] run scoreboard players add #sf_soul_bound_tools_count sfValue 1

execute if data entity @s Item.tag.playerData.Inventory[14].tag.SF_Enchantments[{id:"sf:soul_bound"}] run scoreboard players add #sf_soul_bound_tools_count sfValue 1

execute if data entity @s Item.tag.playerData.Inventory[15].tag.SF_Enchantments[{id:"sf:soul_bound"}] run scoreboard players add #sf_soul_bound_tools_count sfValue 1

execute if data entity @s Item.tag.playerData.Inventory[16].tag.SF_Enchantments[{id:"sf:soul_bound"}] run scoreboard players add #sf_soul_bound_tools_count sfValue 1

execute if data entity @s Item.tag.playerData.Inventory[17].tag.SF_Enchantments[{id:"sf:soul_bound"}] run scoreboard players add #sf_soul_bound_tools_count sfValue 1

execute if data entity @s Item.tag.playerData.Inventory[18].tag.SF_Enchantments[{id:"sf:soul_bound"}] run scoreboard players add #sf_soul_bound_tools_count sfValue 1

execute if data entity @s Item.tag.playerData.Inventory[19].tag.SF_Enchantments[{id:"sf:soul_bound"}] run scoreboard players add #sf_soul_bound_tools_count sfValue 1

execute if data entity @s Item.tag.playerData.Inventory[20].tag.SF_Enchantments[{id:"sf:soul_bound"}] run scoreboard players add #sf_soul_bound_tools_count sfValue 1

execute if data entity @s Item.tag.playerData.Inventory[21].tag.SF_Enchantments[{id:"sf:soul_bound"}] run scoreboard players add #sf_soul_bound_tools_count sfValue 1

execute if data entity @s Item.tag.playerData.Inventory[22].tag.SF_Enchantments[{id:"sf:soul_bound"}] run scoreboard players add #sf_soul_bound_tools_count sfValue 1

execute if data entity @s Item.tag.playerData.Inventory[23].tag.SF_Enchantments[{id:"sf:soul_bound"}] run scoreboard players add #sf_soul_bound_tools_count sfValue 1

execute if data entity @s Item.tag.playerData.Inventory[24].tag.SF_Enchantments[{id:"sf:soul_bound"}] run scoreboard players add #sf_soul_bound_tools_count sfValue 1

execute if data entity @s Item.tag.playerData.Inventory[25].tag.SF_Enchantments[{id:"sf:soul_bound"}] run scoreboard players add #sf_soul_bound_tools_count sfValue 1

execute if data entity @s Item.tag.playerData.Inventory[26].tag.SF_Enchantments[{id:"sf:soul_bound"}] run scoreboard players add #sf_soul_bound_tools_count sfValue 1

execute if data entity @s Item.tag.playerData.Inventory[27].tag.SF_Enchantments[{id:"sf:soul_bound"}] run scoreboard players add #sf_soul_bound_tools_count sfValue 1

execute if data entity @s Item.tag.playerData.Inventory[28].tag.SF_Enchantments[{id:"sf:soul_bound"}] run scoreboard players add #sf_soul_bound_tools_count sfValue 1

execute if data entity @s Item.tag.playerData.Inventory[29].tag.SF_Enchantments[{id:"sf:soul_bound"}] run scoreboard players add #sf_soul_bound_tools_count sfValue 1

execute if data entity @s Item.tag.playerData.Inventory[30].tag.SF_Enchantments[{id:"sf:soul_bound"}] run scoreboard players add #sf_soul_bound_tools_count sfValue 1

execute if data entity @s Item.tag.playerData.Inventory[31].tag.SF_Enchantments[{id:"sf:soul_bound"}] run scoreboard players add #sf_soul_bound_tools_count sfValue 1

execute if data entity @s Item.tag.playerData.Inventory[32].tag.SF_Enchantments[{id:"sf:soul_bound"}] run scoreboard players add #sf_soul_bound_tools_count sfValue 1

execute if data entity @s Item.tag.playerData.Inventory[33].tag.SF_Enchantments[{id:"sf:soul_bound"}] run scoreboard players add #sf_soul_bound_tools_count sfValue 1

execute if data entity @s Item.tag.playerData.Inventory[34].tag.SF_Enchantments[{id:"sf:soul_bound"}] run scoreboard players add #sf_soul_bound_tools_count sfValue 1

execute if data entity @s Item.tag.playerData.Inventory[35].tag.SF_Enchantments[{id:"sf:soul_bound"}] run scoreboard players add #sf_soul_bound_tools_count sfValue 1

#改变执行位置避免虚空伤害使物品消失
data merge entity @s {NoGravity:1b}
tp @s ~ -60 ~
execute at @s run function sf:ench/soul_bound/after_pos_change

