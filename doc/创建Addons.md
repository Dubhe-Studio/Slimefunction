# 粘液科技数据包自定义附魔接口

|魔咒中文名称|英文id|允许的等级范围|基础实现|
|-|-|-|-|
|生命窃取|sf:ife_steal|1-3|sf/advancements/ench/life_steal|
|灵魂绑定|sf:soul_bound|N/A|minecraft/loottables/player 和 sf/functions/soul_bound/tick
|斩首处决|sf:beheading|1-3|minecraft/loottables/(zombie\|skeleton\|wither_skeleton\|creeper\|player) 和 sf/functions/beheading/tick|
* 指令引用样例
```
give @p item{SF_Enchantments:[{id:"sf:soul_bound"}]}
```
* 生命窃取

| 触发几率（生命窃取 I） | 触发几率（生命窃取 II） | 触发几率（生命窃取 III） |
| :----: | ---- | ---- |
| 20% | 45% | 70% |

* 斩首处决

| 实体类型 | 掉落率（斩首处决 I） |  掉落率（斩首处决 II）  |  掉落率（斩首处决 III）  |
| :----: | ---- | ---- | ---- |
| Entity type | Drop chance (Beheading I) | Drop chance (Beheading II) | Drop chance (Beheading III) |
| Player（玩家） | 60% | 70% | 80% |
| Creeper（苦力怕） | 30% | 40% | 50% |
| Skeleton（骷髅） | 30% | 40% | 50% |
| Zombie（僵尸） | 30% | 40% | 50% |
| Wither Skeleton（凋灵骷髅） | 15% | 25% | 40% |
|  |  |  |  |
| 受抢夺附魔影响 | 基础掉落率+抢夺等级*0% | 基础掉落率+抢夺等级*10% | 基础掉落率+抢夺等级*20% |
