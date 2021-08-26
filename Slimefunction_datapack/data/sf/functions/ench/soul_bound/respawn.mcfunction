scoreboard players operation #sf_uid_compare sfValue = @s sfUid
execute as @a[tag=sf_uid,tag=sf_soul_bound_false] run scoreboard players operation @s sfValue = @s sfUid
scoreboard players operation @a[tag=sf_uid,tag=sf_soul_bound_false] sfValue -= #sf_uid_compare sfValue
#tellraw @p [{"score":{"name": "@p[tag=sf_uid,tag=sf_soul_bound_false]","objective": "sfValue"}}]
#指定目标玩家tag=sf_soul_bound_target
execute as @p[tag=sf_soul_bound_false,scores={sfValue=0}] run tag @s add sf_soul_bound_target_re
execute as @s run data modify entity @s Pos set from entity @p[tag=sf_soul_bound_target_re] Pos
execute unless entity @e[type=item,tag=sf_soul_bound_spawn_re] run tag @p[tag=sf_soul_bound_target_re] remove sf_soul_bound_false
execute unless entity @e[type=item,tag=sf_soul_bound_spawn_re] run tag @p[tag=sf_soul_bound_target_re] remove sf_soul_bound_target_re