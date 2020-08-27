json = "{{\n\t\"pools\": [\n\t\t{{\n\t\t\t\"rolls\": 1,\n\t\t\t\"entries\": [\n\t\t\t\t{{\n\t\t\t\t\t\"type\": \"minecraft:item\",\n\t\t\t\t\t\"name\": \"minecraft:firework_star\",\n\t\t\t\t\t\"functions\": [\n\t\t\t\t\t\t{{\n\t\t\t\t\t\t\t\"function\": \"minecraft:set_nbt\",\n\t\t\t\t\t\t\t\"tag\": \"{{CustomModelData:7270<>,display:{{Lore:['{{\\\"italic\\\":false,\\\"translate\\\":\\\"sf.{a}.lore\\\"}}'],Name:'{{\\\"italic\\\":false,\\\"translate\\\":\\\"sf.{a}.name\\\"}}'}},id:'sf:{a},dict:[\\\"{a}\\\"]'}}\"\n\t\t\t\t\t\t}}\n\t\t\t\t\t]\n\t\t\t\t}}\n\t\t\t]\n\t\t}}\n\t]\n}}"

with open("_create_path.txt", "r") as f:
    text = f.readlines()
for i in text:
    i = i[:-1]
    with open(i+".json", "w+")as f:
        f.write(json.format(a=i))
