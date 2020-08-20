	scoreboard players set u cn 10000
	scoreboard players set v cn 10000
	scoreboard players set w cn 10000
	summon armor_stand 0.0 0.0 0.0 {Tags:["tmp"],Motion:[1.0d,0.0d,0.0d]}
	execute as @e[tag=tmp] at @s run function math:cn/local-m
	kill @e[tag=tmp]
	tellraw @a {"score":{"name":"x","objective":"cn"}}
	tellraw @a {"score":{"name":"y","objective":"cn"}}
	tellraw @a {"score":{"name":"z","objective":"cn"}}