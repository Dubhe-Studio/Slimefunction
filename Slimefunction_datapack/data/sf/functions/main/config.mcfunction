# 死亡不掉落 (掉落：0，不掉落：1)
scoreboard players set #keepInventory sf_value 0

execute if score #keepInventory sf_value matches 0 run gamerule keepInventory false
execute if score #keepInventory sf_value matches 1 run gamerule keepInventory true