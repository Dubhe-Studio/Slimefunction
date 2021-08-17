
execute if data entity @s Item.tag.playerData.Inventory[0].tag.SF_Enchantments[{id:"sf:soul_bound"}] run function sf:ench/soul_bound/ray
data remove entity @s Item.tag.playerData.Inventory[0]
execute if score #sf_soul_bound_tools_count sfValue matches 1.. run function sf:ench/soul_bound/iter

