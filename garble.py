# -=by Cjsah=-
# 混淆 + 乱序 + 转码
import random, string, json

file = "zh_cn.json"

strs = string.digits + string.ascii_letters


def get_key():
    tmp = ''
    for j in range(10):  # key长度
        tmp += random.choice(strs)
    return tmp


with open(file, "r", encoding="utf8")as f:
    text = json.loads(f.read())


keys = []

for i in range(len(text)):
    key = get_key()

    while True:  # 判断key是否重复
        if key in keys:
            key = get_key()
        else:
            break

    keys.append(key)


newjson = {}

for index, key in enumerate(text):  # 生成新json
    newjson[keys[index]] = eval(repr(str(text[key].encode("unicode_escape"), encoding="utf8")).replace('\\\\', '\\'))


finaljson = {}
ran = []

for i, j in enumerate(newjson):  # 打乱顺序
    keys = list(newjson.keys())
    while True:
        r = random.randint(0, len(newjson) - 1)
        if r not in ran:
            break
    ran.append(r)
    finaljson[keys[r]] = newjson[keys[r]]


with open("new_" + file, "w+")as f:  # 写入
    f.write(json.dumps(finaljson, indent=4))
