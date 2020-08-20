tag @s add tmp
execute at @s run tp @e[tag=button_set,tag=!tmp,distance=..0.3] 0.0 -1000.0 0.0
execute at @p positioned ~ ~1.62 ~ run function math:if-raycast
execute if score @s result matches 1 run data modify entity @s Glowing set value 1b

execute as @e[tag=sbutton_set] if score @s mpar_sbid = @e[tag=tmp,limit=1] mpar_sbid run tag @s add tmp2

execute if score @s result matches 0 run scoreboard players set @s int1 0
execute if score @s result matches 1 if entity @s[tag=mpar_choice] run scoreboard players add @s int1 1
execute if score @s result matches 1 if entity @s[tag=!mpar_choice] unless entity @e[tag=tmp2,tag=mpar_choice] run scoreboard players add @s int1 1
execute if score @s int1 matches 1 at @s run playsound minecraft:block.bamboo.break player @p ~ ~ ~ 1 2
execute if score @s int1 matches ..5 run scoreboard players set @s result 0
execute if score @s int1 matches 6.. run scoreboard players set @s result 1
execute if score @s int1 matches 6.. run scoreboard players set @s int1 0

execute unless entity @e[tag=tmp2,tag=!mpar_choice] run kill @s
execute if entity @s[tag=!mpar_choice] if score @s result matches 1 unless entity @e[tag=tmp2,tag=mpar_choice] at @s facing entity @p eyes run function math:particles/sbutton/choice
execute if entity @s[tag=mpar_choice0] if score @s result matches 1 as @e[tag=tmp2,tag=!mpar_choice] run function math:particles/sbutton/runc
execute if entity @s[tag=mpar_choice1] if score @s result matches 1 run tp @e[tag=tmp2,tag=mpar_choice] 0.0 -1000.0 0.0
tag @e remove tmp2
tag @s remove tmp