tag @e remove result
summon area_effect_cloud ~ ~ ~ {Tags:["stmp"]}
summon item ~ 180.0 ~ {Tags:["stmp1","result"],Item:{id:"minecraft:glass",Count:1b,tag:{line:[[0.0d,0.0d],[0.0d,0.0d]]}},NoGravity:true}
data modify entity @e[tag=stmp1,limit=1] Item.tag.line[0][0] set from entity @s Pos[0]
data modify entity @e[tag=stmp1,limit=1] Item.tag.line[0][1] set from entity @s Pos[2]
data modify entity @e[tag=stmp1,limit=1] Item.tag.line[1][0] set from entity @e[tag=stmp,limit=1] Pos[0]
data modify entity @e[tag=stmp1,limit=1] Item.tag.line[1][1] set from entity @e[tag=stmp,limit=1] Pos[2]
tag @e remove stmp1
kill @e[tag=stmp]