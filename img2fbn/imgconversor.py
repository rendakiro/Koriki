# Description: El Script adapta el nombre de las imagenes por el nombre del archivo usando alias.txt

import os

alias_list = []
file_names = []
dir_main = os.path.dirname(os.path.abspath(__file__))

with open(os.path.join(dir_main,"alias.txt"), "r") as file:
    for line in file:
        alias = line.strip().split("=")
        alias_list.append(alias)

dir_main = os.path.join(dir_main,"images")
for file_name_dir in os.listdir(dir_main): 
    file_names.append(file_name_dir.replace(".png", ""))
    for alias in alias_list:
        for file_name in file_names:
            if alias[1] == file_name:
                orig_file = os.path.join(dir_main, file_name + ".png")
                dest_file = os.path.join(dir_main, alias[0] + ".png")
                print("Renaming " + orig_file + " to " + dest_file)
                if os.path.exists(dest_file):
                    continue
                os.rename(orig_file, dest_file)