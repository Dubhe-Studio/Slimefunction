execute as @e[type=!arrow,scores={sf_icy_arrow}] at @s if predicate sf:weapons/icy_bow run tag @e[type=arrow,sort=nearest,limit=1] add sf_icy_arrow
execute as @e[tag=sf_icy_arrow,scores={sf_icy_arrow=0}] at @s store success score @s sf_icy_arrow run function sf:action/items/weapons/icy_bow/icy_arrow
function sf:action/items/weapons/icy_bow/icy_aec