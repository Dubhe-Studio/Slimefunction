execute as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:16b}}] at @s if block ~ ~ ~ enchanting_table run function sf:main/beta/loot
execute as @e[type=item,nbt={Item:{id:"minecraft:stone_button",tag:{needMerge:1b}}}] at @s run function sf:ench/main
