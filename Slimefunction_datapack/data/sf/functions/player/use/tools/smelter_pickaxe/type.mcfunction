execute if entity @s[nbt={Item:{id:"minecraft:coal_ore"}}] run data modify entity @s Item.id set value "minecraft:coal"

execute if entity @s[nbt={Item:{id:"minecraft:iron_ore"}}] run data modify entity @s Item.id set value "minecraft:iron_ingot"
execute if entity @s[nbt={Item:{id:"minecraft:deepslate_iron_ore"}}] run data modify entity @s Item.id set value "minecraft:iron_ingot"
execute if entity @s[nbt={Item:{id:"minecraft:raw_iron"}}] run data modify entity @s Item.id set value "minecraft:iron_ingot"

execute if entity @s[nbt={Item:{id:"minecraft:gold_ore"}}] run data modify entity @s Item.id set value "minecraft:gold_ingot"
execute if entity @s[nbt={Item:{id:"minecraft:deepslate_gold_ore"}}] run data modify entity @s Item.id set value "minecraft:gold_ingot"
execute if entity @s[nbt={Item:{id:"minecraft:raw_gold"}}] run data modify entity @s Item.id set value "minecraft:gold_ingot"

execute if entity @s[nbt={Item:{id:"minecraft:copper_ore"}}] run data modify entity @s Item.id set value "minecraft:copper_ingot"
execute if entity @s[nbt={Item:{id:"minecraft:deepslate_copper_ore"}}] run data modify entity @s Item.id set value "minecraft:copper_ingot"
execute if entity @s[nbt={Item:{id:"minecraft:raw_copper"}}] run data modify entity @s Item.id set value "minecraft:copper_ingot"

execute if entity @s[nbt={Item:{id:"minecraft:emerald_ore"}}] run data modify entity @s Item.id set value "minecraft:emerald"
execute if entity @s[nbt={Item:{id:"minecraft:diamond_ore"}}] run data modify entity @s Item.id set value "minecraft:diamond"
execute if entity @s[nbt={Item:{id:"minecraft:nether_quartz_ore"}}] run data modify entity @s Item.id set value "minecraft:quartz"

execute if entity @s[nbt={Item:{id:"minecraft:ancient_debris"}}] run data modify entity @s Item.id set value "minecraft:netherite_scrap"

execute if entity @s[nbt={Item:{id:"minecraft:redstone_ore"}}] run function sf:action/items/ore/redstone
execute if entity @s[nbt={Item:{id:"minecraft:nether_gold_ore"}}] run function sf:action/items/ore/redstone

execute if entity @s[nbt={Item:{id:"minecraft:lapis_ore"}}] run function sf:action/items/ore/lapis
execute if entity @s[nbt={Item:{id:"minecraft:deepslate_lapis_ore"}}] run function sf:action/items/ore/lapis

