#斩首 此stone_button在战利品表中被定义为特定的魔咒攻击掉落物
execute as @e[type=item,nbt={Item:{id:"minecraft:stone_button",tag:{needMerge:1b}}}] if data entity @s Item.tag.SF_Enchantments[{id:"sf:beheading"}] at @s run function sf:ench/beheading/tick
#灵魂绑定 #keepInventory用于检查是否已经开启死亡不掉落
execute if score #keepInventory sf_value matches 0 as @e[type=item,nbt={Item:{id:"minecraft:stone"}}] if data entity @s Item.tag.playerData at @s run function sf:ench/soul_bound/tick


