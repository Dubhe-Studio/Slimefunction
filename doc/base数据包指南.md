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
## 添加基础的数据包信息
- 数据包查看器的基本原理为在 minecraft 命名空间下使用命令创建文件 command_storage_minecraft.dat ，使用自定义的标签标明数据包信息间的层级关系。
- 您可以使用如下命令在 command_storage_minecraft.dat 创建模版标签对象 datapack_family_name
```mcfunction
data modify storage datapack data_pack_family append value {infor:{loadSuccess:'{"text":""}',module:'{"text":""}',loadFailed:'{"text":""}',name:'{"text":" "}',namespace:'{"text":""}',compatibility:'{"text":""}',version:'{"text":""}'},modules:[]}
```
- 以下为 minecraft:datapack.data_pack_family的nbt结构
- [TAG_Compound] datapack ：根标签
    - [TAG_Compound] data_pack_family ：填写你的数据包系列名作为根路径，使得可以使用路径 datapack.data_pack_family 找到你的数据包而不是别人的
        - [TAG_Compound] infor ：你的数据包信息
            - [TAG_String] loadSuccess ：用于提示检测成功的文字
            - [TAG_String] module ：用于显示文字 '模块'
            - [TAG_String] loadFailed ：用于提示检测失败的文字
            - [TAG_String] name ：显示的数据包名样式
            - [TAG_String] namespace ：数据包命名空间名
            - [TAG_String] compatibility ：兼容的MC版本
            - [TAG_String] version ：数据包版本
        - [TAG_List] modules ：数据包的关联模块，若没有可忽略
            - [TAG_Compound] 一个模块
                - [TAG_String] id ：模块id
                - [TAG_String] name ：模块显示名

- 添加模块信息
```mcfunction
data modify storage datapack 数据包名.modules[{id:"数据包命名空间名:模块名"}].name set value '{"text":"模块显示名"}'
```
- 添加结果显示
```mcfunctoin
execute if score #模块或数据包名 load.status matches 1 run tellraw @a [{"nbt":"数据包名.infor.loadSuccess","storage":"minecraft:datapack","interpret":true},{"nbt":"数据包名.modules[{id:\"数据包命名空间名:模块名\"}].name","storage":"datapack","interpret":true},{"nbt":"数据包名.infor.module","storage":"minecraft:datapack","interpret":true}]
execute unless score #(数据包命名空间名_模块名 load.status matches 1 run tellraw @a [{"nbt":"数据包名.infor.loadFailed","storage":"minecraft:datapack","interpret":true,"color":"red"},{"nbt":"数据包名.modules[{id:\"数据包命名空间名:模块名\"}].name","storage":"datapack","interpret":true,"color":"red"},{"nbt":"数据包名.infor.module","storage":"minecraft:datapack","interpret":true,"color":"red"}]
```