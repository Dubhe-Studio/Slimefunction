execute as @a[scores={tld_used_bow=1..}] if predicate tld:main/bow/explode_bow at @s anchored eyes positioned ^ ^ ^ as @e[type=minecraft:arrow,distance=..4,sort=nearest,nbt={inGround:0b},nbt=!{LeftOwner:1b}] run tag @s add EXPLODE
execute as @a[scores={tld_used_bow=1..}] run scoreboard players set @s used_bow 0

execute as @e[type=minecraft:arrow,tag=EXPLODE,nbt={inGround:1b}] at @s run summon minecraft:tnt
execute as @e[type=minecraft:arrow,tag=EXPLODE,nbt={inGround:1b}] run kill @s

#发弓识别仍然有一个BUG，需要修复
