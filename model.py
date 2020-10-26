# -=by Cjsah=-
import pyexcel_xls as xls
import os, json

mcpath = "Slimefunction_resourcepack/assets/minecraft/models/item"
sfpath = "Slimefunction_resourcepack/assets/sf/models/items"
vanpath = "Vanilla Resourcepack/models/item"
item = {}
namespace = ""

data = xls.get_data("doc/物品ID.xlsx")["Sheet1"]
for index, value in enumerate(data):
    if index == 0 or len(value) < 6:
        continue
    if value[5] != namespace:
        namespace = value[5]
        if item.__contains__(namespace):
            item[namespace].append(value)
        else:
            item[namespace] = [value]
    else:
        item[namespace].append(value)
for i in item:
    print(item[i])
    try:
        with open(os.path.join(vanpath, i+".json"), "r")as f:
            text = json.loads(f.read())
    except:
        print("\033[31m文件不存在,停止运行!\033[0m")
        quit()
    for j in item[i]:
        name = {"predicate": {"custom_model_data": j[0]}, "model": "sf:items/"+j[4]+"/"+j[1]}
        if not text.__contains__("overrides"):
            text["overrides"] = []
        text["overrides"].append(name)
        if not os.path.exists(os.path.join(sfpath, j[4])):
            os.mkdir(os.path.join(sfpath, j[4]))
        if not os.path.exists(os.path.join(sfpath, j[4], j[1]+'.json')):
            with open(os.path.join(sfpath, j[4], j[1]+'.json'), "w+")as f:
                f.write(json.dumps({"parent": "item/handheld", "textures": {"layer0": "sf:items/"+j[4]+"/"+j[1]}}, indent=4))
    if not os.path.exists(os.path.join(mcpath, i+".json")):
        with open(os.path.join(mcpath, i+".json"), "w+")as f:
            f.write(json.dumps(text, indent=4))
    else:
        with open(i+".json", "w+")as f:
            f.write(json.dumps(text, indent=4))

