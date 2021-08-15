# 粘液科技数据包自定义附魔接口

|魔咒中文名称|英文id|允许的等级范围|函数接口|基础实现|
|-|-|-|-|-|
|生命窃取|sf:ife_steal|1-3|#sf:ench/life_steal|advancements/ench/life_steal
|灵魂绑定|sf:soul_bound|1|#sf:ench/soul_bound|
|斩首处决|sf:beheading|1-3|#sf:ench/beheading|

* 灵魂绑定 soul_bound (默认1，最高1)
    * soul_bound:1b

* 生命窃取 life_steal (默认1，最高3)
    * life_steal:1s
    * life_steal:2s
    * life_steal:3s

| 触发几率（生命窃取 I） | 触发几率（生命窃取 II） | 触发几率（生命窃取 III） |
| :----: | ---- | ---- |
| 20% | 45% | 70% |


* 斩首处决 beheading (默认1，最高3)
    * beheading:1s
    * beheading:2s
    * beheading:3s

| 实体类型 | 掉落机会（斩首处决 I） |  掉落机会（斩首处决 II）  |  掉落机会（斩首处决 III）  |
| :----: | ---- | ---- | ---- |
| Entity type | Drop chance (Beheading I) | Drop chance (Beheading II) | Drop chance (Beheading III) |
| Player（玩家） | 60% | 70% | 80% |
| Creeper（苦力怕） | 30% | 40% | 50% |
| Skeleton（骷髅） | 30% | 40% | 50% |
| Zombie（僵尸） | 30% | 40% | 50% |
| Wither Skeleton（凋灵骷髅） | 15% | 25% | 40% |
|  |  |  |  |
| 受抢夺附魔影响 | 每级+0% | 每级+10% | 每级+20% |
