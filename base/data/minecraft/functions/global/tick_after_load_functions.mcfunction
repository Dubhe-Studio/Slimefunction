function sf:player/check_uid
function sf:action/items/tools/pickaxe/tick
function sf:action/items/tools/shovel/tick
function sf:action/items/weapons/bow/tick
function sf:ench/tick
function sf:main/beta/execute

function sf:main/main
































































































#使用schedule使得本函数被高频调用 请勿随意更改
schedule clear #tick
schedule function global/tick_after_load_functions 1t