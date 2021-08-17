# 函数加载器
## 设置 laod 函数
- 编辑 minecraft:global/load_functions 可使得里面的函数等同使用 load 标签进行加载
- 例子：使得在使用/reload或其他情况下重载函数后1t执行：tset:load函数
```mcfunction
function test:load
```
## 设置 tick 函数
- 此 tick 函数和使用 #tick 标签进行激活的tick函数有所不同：#tick标签在数据包重载时会优先于 load 函数执行，使用 base 数据包添加的 tick 函数会安排在 load 函数后执行。
- 编辑 minecraft:global/tick_functions 可使得写入的函数等同在数据包重载1t后添加 的高频函数。
- 例子：使得在使用/reload或其他情况下重载函数后1t执行（load执行完后再执行）test:tick 函数
```mcfunction
function test:tick
```
# 数据包检查器
## 文件名规范
- slimefunction 数据包专属的包检查器为 sf_pack_checker.mcfunction ，如要添加其他的包加载器，请在global同目录下创建文件 (数据包命名空间名)_pack_checker.mcfunction
## 检查器规范
- 添加基础的数据包信息
```mcfunction
data merge storage datapack {(要管理的数据包名或标识符)):{infor:{loadSuccess:'{"text":"(检测成功的信息)"}',module:'{"text":"模块"}',loadFailed:'{"text":"(检测失败的信息))"}'},version:(数据包版本),modules:[]}}
```
- 其中，modules 为数据包相关的依赖包或其他相关的模块。如没有检测的必要，可以忽略。
- 添加模块信息
```mcfunction
data modify storage datapack (数据包名).modules[{id:"(数据包命名空间名)):(模块名)"}].name set value '{"text":"(模块显示名))"}'
```
- 添加结果显示
```mcfunctoin
execute if score #（模块或数据包名） load.status matches 1 run tellraw @a [{"nbt":"(数据包名).infor.loadSuccess","storage":"minecraft:datapack","interpret":true},{"nbt":"(数据包名).modules[{id:\"(数据包命名空间名):(模块名)\"}].name","storage":"datapack","interpret":true},{"nbt":"(数据包名).infor.module","storage":"minecraft:datapack","interpret":true}]
execute unless score #(数据包命名空间名)_(模块名) load.status matches 1 run tellraw @a [{"nbt":"(数据包名).infor.loadFailed","storage":"minecraft:datapack","interpret":true,"color":"red"},{"nbt":"(数据包名).modules[{id:\"(数据包命名空间名):(模块名)\"}].name","storage":"datapack","interpret":true,"color":"red"},{"nbt":"(数据包名).infor.module","storage":"minecraft:datapack","interpret":true,"color":"red"}]
```