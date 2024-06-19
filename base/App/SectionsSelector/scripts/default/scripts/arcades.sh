consoles="/mnt/SDCARD/.simplemenu/section_groups/arcades.ini"

cat > ${consoles} <<EOF
consoleList =MAME,FINALBURN NEO,DAPHNE

[MAME]
execs = /mnt/SDCARD/.simplemenu/launchers/mame2010_libretro, /mnt/SDCARD/.simplemenu/launchers/mame2015_libretro
romDirs = /mnt/SDCARD/Roms/ARCADE/
romExts = .zip
aliasFile = /mnt/SDCARD/.simplemenu/alias.txt

[FINALBURN NEO]
execs = /mnt/SDCARD/.simplemenu/launchers/fbneo_libretro,/mnt/SDCARD/.simplemenu/launchers/fb_32b_libretro,/mnt/SDCARD/.simplemenu/launchers/fbneo_miyoo_libretro
romDirs = /mnt/SDCARD/Roms/fbneo/
romExts = .zip
aliasFile = /mnt/SDCARD/.simplemenu/alias.txt

[DAPHNE]
execs = /mnt/SDCARD/.simplemenu/launchers/daphne_libretro
romDirs = /mnt/SDCARD/Roms/daphne/
romExts = .zip
EOF
