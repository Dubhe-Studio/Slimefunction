#迭代生成灵魂物品
function sf:ench/soul_bound/iter
#传送灵魂物品
tag @p[tag=sf_soul_bound_target] add sf_soul_bound_false
tag @e[type=player,limit=1,sort=nearest,tag=sf_soul_bound_target] remove sf_soul_bound_false
execute as @e[tag=sf_soul_bound_spawn,distance=..1] run data modify entity @s Pos set from entity @p[tag=sf_soul_bound_target,tag=!sf_soul_bound_false] Pos
execute if entity @p[tag=sf_soul_bound_false] run scoreboard players operation @e[tag=sf_soul_bound_spawn,distance=..1] sfUid = @p[tag=sf_soul_bound_false] sfUid
#删除源物品
kill @e[type=item,nbt={Item:{tag:{SF_Enchantments:[{id:"sf:soul_bound"}]}}},tag=!sf_soul_bound_spawn]
tag @p remove sf_soul_bound_target
execute run tag @e[tag=sf_soul_bound_spawn,distance=..1] add sf_soul_bound_spawn_re
execute run tag @e[tag=sf_soul_bound_spawn,distance=..1] remove sf_soul_bound_spawn
kill @s
scoreboard players set #sf_soul_bound_tools_count sfValue 0
