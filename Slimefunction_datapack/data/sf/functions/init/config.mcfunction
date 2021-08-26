# 死亡不掉落 (掉落：0，不掉落：1) 开启后灵魂绑定会生效
scoreboard players set $keepInventory sfValue 0
#食用一个肉干后，增加的肉干等级（数值越大，补偿饥饿值的机会越多）
scoreboard players set $sf_jerky_level sfValue 6
#每次补偿一点饥饿值后，减少的肉干等级（数值越大，肉干等级越消耗得越快）
scoreboard players set $sf_jerky_level_reduction sfValue 1

