execute unless entity @e[type=minecraft:arrow,limit=1,sort=nearest,distance=..1,tag=sf_icy_arrow] as @e[distance=0.1..1.5,sort=nearest,limit=1] run function sf:entities/arrow/icy/freeze
execute if data entity @e[type=minecraft:arrow,limit=1,sort=nearest,distance=..1,tag=sf_icy_arrow] {inGround:1b} run function sf:entities/arrow/icy/freeze


