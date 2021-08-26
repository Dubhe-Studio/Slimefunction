execute as @s[tag=sf_eat_monster_jerky] run function sf:player/eat/food/jerky/monster/clear_hunger
execute as @s[scores={sfJerkyLevel=1..},nbt={foodSaturationLevel:0.0f}] run function sf:player/eat/food/jerky/common/reduce_jerky_level
