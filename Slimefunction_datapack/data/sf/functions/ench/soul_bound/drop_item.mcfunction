summon item ~ ~1.5 ~ {Item:{id:"stone",Count:1},Tags:["drop"]}
data modify entity @e[limit=1,sort=nearest,tag=drop] Item set from storage sf:drop inventory[0]
tag @e[limit=1,sort=nearest,tag=drop] remove drop
data remove storage sf:drop inventory[0]