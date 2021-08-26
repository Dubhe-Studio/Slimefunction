schedule function sf:tick 1t
#sf_main
execute as @a run function sf:player/tick
execute as @e[tag=sf_entity_tick] run function sf:entities/tick
execute if entity @e[tag=sf_ench_tick] run function sf:ench/tick
function sf:main/beta/execute
#energy_api
function sf:main/main
