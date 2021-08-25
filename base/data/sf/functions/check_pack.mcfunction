#data modify storage sf:check_pack id set value '{"text":"slimefunction"}'
execute if data storage sf:energy_api load run tellraw @a ["[SlimeFunction] 成功检测到energy_api"]
data remove storage sf:energy_api loadd

