execute at @e[tag=sf_icy_aec,sort=nearest,limit=1] run tp @e[tag=sf_icy_aec,sort=nearest,limit=1] ~ ~ ~ facing entity @s


summon area_effect_cloud ~ ~ ~ {Duration:3,Tags:["sf_icy_aec"]}
scoreboard players operation @e[tag=sf_icy_aec,sort=nearest,limit=1] sf_uuid1 = @s sf_uuid1
scoreboard players operation @e[tag=sf_icy_aec,sort=nearest,limit=1] sf_uuid2 = @s sf_uuid2
scoreboard players operation @e[tag=sf_icy_aec,sort=nearest,limit=1] sf_uuid3 = @s sf_uuid3
scoreboard players operation @e[tag=sf_icy_aec,sort=nearest,limit=1] sf_uuid4 = @s sf_uuid4


