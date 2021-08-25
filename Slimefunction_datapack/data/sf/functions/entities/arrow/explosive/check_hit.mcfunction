execute unless entity @e[type=minecraft:arrow,limit=1,sort=nearest,distance=..1,tag=sf_explosive_arrow] run function sf:entities/arrow/explosive/explode
execute if data entity @e[type=minecraft:arrow,limit=1,sort=nearest,distance=..1,tag=sf_explosive_arrow] {inGround:1b} run function sf:entities/arrow/explosive/explode


