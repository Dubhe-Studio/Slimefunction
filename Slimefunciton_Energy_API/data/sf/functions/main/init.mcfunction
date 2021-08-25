data modify storage sf:energy_api load set value true
#give
give @p armor_stand{display:{Name:"1"},EntityTag:{Tags:["es","sfmachine"]}}
give @p armor_stand{display:{Name:"2"},EntityTag:{Tags:["em","sfmachine"]}}
give @p armor_stand{display:{Name:"3"},EntityTag:{Tags:["es","em","sfmachine"]}}
#货运管理
scoreboard objectives add channel dummy
#能量
scoreboard objectives add sfe dummy
scoreboard objectives add sfeZero dummy
scoreboard objectives add sfeTemp dummy
scoreboard objectives add sfeMax dummy
scoreboard objectives add sfeOut dummy