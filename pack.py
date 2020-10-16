# -=by Cjsah=-
import zipfile, os


# 混淆
# os.system("python garble.py")


# 打包数据包
with zipfile.ZipFile('Slimefunction数据包.zip', 'w', zipfile.ZIP_DEFLATED)as f:
    for dir_path, dir_names, filenames in os.walk(os.getcwd() + '/Slimefunction_datapack'):
        path = dir_path.replace(os.getcwd() + '/Slimefunction_datapack', '')
        path = path and path + os.sep or ''
        for filename in filenames:
            f.write(os.path.join(dir_path, filename), path + filename)


# 打包资源包
with zipfile.ZipFile('Slimefunction资源包.zip', 'w', zipfile.ZIP_DEFLATED)as f:
    for dir_path, dir_names, filenames in os.walk(os.getcwd() + '/Slimefunction_resourcepack'):
        path = dir_path.replace(os.getcwd() + '/Slimefunction_resourcepack', '')
        path = path and path + os.sep or ''
        for filename in filenames:
            f.write(os.path.join(dir_path, filename), path + filename)


# 整合打包
name = input('请输入要打包的版本号: ')

with zipfile.ZipFile('Slimefunction-v{}.zip'.format(name), 'w', zipfile.ZIP_DEFLATED)as f:
    f.write('Slimefunction数据包.zip')
    f.write('Slimefunction资源包.zip')


# 删除残留包
os.remove('Slimefunction数据包.zip')
os.remove('Slimefunction资源包.zip')
