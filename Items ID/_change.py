from pathlib import Path
import os

text = "{{\n\t\"pools\": [\n\t\t{{\n\t\t\t\"rolls\": 1,\n\t\t\t\"entries\": [\n\t\t\t\t{{\n\t\t\t\t\t\"type\": \"minecraft:item\",\n\t\t\t\t\t\"name\": \"minecraft:\",\n\t\t\t\t\t\"functions\": [\n\t\t\t\t\t\t{{\n\t\t\t\t\t\t\t\"function\": \"minecraft:set_nbt\",\n\t\t\t\t\t\t\t\"tag\": \"{{CustomModelData:7270,display:{{Lore:['{{\\\"italic\\\":false,\\\"translate\\\":\\\"sf.{name}.lore\\\"}}'],Name:'{{\\\"italic\\\":false,\\\"translate\\\":\\\"sf.{name}.name\\\",\\\"color\\\":\\\"\\\"}}'}},id:'sf:{name}',Enchantments:[{{id:\\\"\\\",lvl:}}]}}\"\n\t\t\t\t\t\t}}\n\t\t\t\t\t]\n\t\t\t\t}}\n\t\t\t]\n\t\t}}\n\t]\n}}"

dirs = os.listdir(Path())
for i in dirs:
    if not i.endswith('.py') and not i.endswith('.json') and not os.path.isdir(i):
        change_name = i.lower().replace(' ', '_') + '.json'
        os.rename(Path()/i, Path()/change_name)
        with open(Path()/change_name, 'w')as f:
            f.write(text.format(name=change_name[:-5]))



