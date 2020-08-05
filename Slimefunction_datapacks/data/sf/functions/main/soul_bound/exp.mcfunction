loot spawn ~ ~ ~ loot sf:main/exp_random
summon experience_orb ~ ~ ~
data modify entity @e[sort=nearest,limit=1,type=experience_orb,nbt={Value:0s}] Value set from entity @e[sort=nearest,limit=1,nbt={Item:{tag:{sf_exp:1b}}}] Item.Count
kill @e[nbt={Item:{tag:{sf_exp:1b}}}]
