scoreboard players set $owner sf_value 1
execute unless score @s sf_uuid1 = @e[tag=sf_icy_aec,limit=1,sort=nearest] sf_uuid1 run scoreboard players set $owner sf_value 0
execute unless score @s sf_uuid2 = @e[tag=sf_icy_aec,limit=1,sort=nearest] sf_uuid2 run scoreboard players set $owner sf_value 0
execute unless score @s sf_uuid3 = @e[tag=sf_icy_aec,limit=1,sort=nearest] sf_uuid3 run scoreboard players set $owner sf_value 0
execute unless score @s sf_uuid4 = @e[tag=sf_icy_aec,limit=1,sort=nearest] sf_uuid4 run scoreboard players set $owner sf_value 0
execute if score $owner sf_value matches 0 run function sf:action/items/weapons/icy_bow/icy_bow
