# Description: El Script adapta el nombre de las imagenes por el nombre del archivo usando alias.txt

import os

alias_list = []
file_list = []
dir_main = os.path.dirname(os.path.abspath(__file__))

with open(os.path.join(dir_main,"alias.txt"), "r") as file:
    for line in file:
        alias = line.strip().split("=")
        alias_list.append(alias)

dir_main = os.path.join(dir_main,"images")
for file_name_dir in os.listdir(dir_main):
    file_list.append(file_name_dir.replace(".png", ""))

for file_name in file_list:
    for alias in alias_list:
        if alias[1] == file_name:
            orig_file = os.path.join(dir_main, file_name + ".png")
            dest_file = os.path.join(dir_main, alias[0] + ".png")
            if os.path.exists(dest_file):
                continue
            print("Renaming " + orig_file + " to " + dest_file)
            os.rename(orig_file, dest_file)
            continue