execute store result score #ench_level sfValue run data get entity @s Item.tag.Enchantments[{id:"minecraft:looting"}].lvl
execute store result score #ench_level_sf sfValue run data get entity @s Item.tag.SF_Enchantments[{id:"sf:beheading"}].lvl
scoreboard players remove #ench_level_sf sfValue 1
scoreboard players operation #ench_level_sf sfValue *= #10 sfValue
scoreboard players operation #chance sfValue = #ench_level sfValue
scoreboard players operation #chance sfValue *= #ench_level_sf sfValue
scoreboard players operation @s sfValue += #chance sfValue




