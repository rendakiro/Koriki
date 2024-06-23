consoles="/mnt/SDCARD/.simplemenu/section_groups/handhelds.ini"

cat > ${consoles} <<EOF
[CONSOLES]
consoleList = ARDUINO,GAME BOY,GAME BOY COLOR,GAME BOY ADVANCE,NINTENDO DS,GAME & WATCH,GAME GEAR,ATARI LYNX,NEO GEO POCKET,NEO GEO POCKET COLOR,WONDERSWAN,WONDERSWAN COLOR,POKEMON MINI,SUPERVISION

[ARDUINO]
execs = /mnt/SDCARD/.simplemenu/launchers/arduous_libretro
romDirs = /mnt/SDCARD/Roms/arduboy/
romExts = .hex

[GAME BOY]
execs = /mnt/SDCARD/.simplemenu/launchers/gambatte_libretro
romDirs = /mnt/SDCARD/Roms/gb/
romExts = .gb,.gz,.zip,.7z
scaling = 1

[GAME BOY COLOR]
execs = /mnt/SDCARD/.simplemenu/launchers/gambatte_libretro,/mnt/SDCARD/.simplemenu/launchers/vbam_libretro,/mnt/SDCARD/.simplemenu/launchers/mgba_plus_libretro,/mnt/SDCARD/.simplemenu/launchers/mgba_libretro
romDirs = /mnt/SDCARD/Roms/gbc/
romExts = .gbc,.zip,.7z
scaling = 1

[GAME BOY ADVANCE]
execs = /mnt/SDCARD/.simplemenu/launchers/mgba_plus_libretro,/mnt/SDCARD/.simplemenu/launchers/mgba_libretro
romDirs = /mnt/SDCARD/Roms/gba/
romExts = .gba,.zip,.7z
scaling = 1

[NINTENDO DS]
execs = /mnt/SDCARD/.simplemenu/launchers/drastic_standalone
romDirs = /mnt/SDCARD/Roms/nds/
romExts = .nds,.7z,.zip,.rar
scaling = 1

[GAME & WATCH]
execs = /mnt/SDCARD/.simplemenu/launchers/gw_libretro,/mnt/SDCARD/.simplemenu/launchers/gw_miyoo_libretro
romDirs = /mnt/SDCARD/Roms/gameandwatch/
romExts = .mgw,.zip,.7z
scaling = 1

[GAME GEAR]
execs = /mnt/SDCARD/.simplemenu/launchers/picodrive_libretro,/mnt/SDCARD/.simplemenu/launchers/genesis_plus_gx_libretro,/mnt/SDCARD/.simplemenu/launchers/gearsystem_libretro,/mnt/SDCARD/.simplemenu/launchers/picodrive_standalone
romDirs = /mnt/SDCARD/Roms/gamegear/
romExts = .zip,.gg,.7z
scaling = 1

[ATARI LYNX]
execs = /mnt/SDCARD/.simplemenu/launchers/handy_libretro,/mnt/SDCARD/.simplemenu/launchers/mednafen_lynx_libretro
romDirs = /mnt/SDCARD/Roms/lynx/
romExts = .zip,.lnx,.7z
scaling = 1

[NEO GEO POCKET]
execs = /mnt/SDCARD/.simplemenu/launchers/mednafen_ngp_libretro, /mnt/SDCARD/.simplemenu/launchers/race_libretro
romDirs = /mnt/SDCARD/Roms/ngp/
romExts = .ngp,.ngc,.npc,.zip,.7z
scaling = 1

[NEO GEO POCKET COLOR]
execs = /mnt/SDCARD/.simplemenu/launchers/mednafen_ngp_libretro, /mnt/SDCARD/.simplemenu/launchers/race_libretro
romDirs = /mnt/SDCARD/Roms/ngpc/
romExts = .ngp,.ngc,.ngpc,.npc,.zip,.7z
scaling = 1

[WONDERSWAN]
execs = /mnt/SDCARD/.simplemenu/launchers/mednafen_wswan_libretro
romDirs = /mnt/SDCARD/Roms/wswan/
romExts = .ws,.pc2,.zip,.7z
scaling = 1

[WONDERSWAN COLOR]
execs = /mnt/SDCARD/.simplemenu/launchers/mednafen_wswan_libretro
romDirs = /mnt/SDCARD/Roms/wswanc/
romExts = .ws,.wsc,.pc2,.zip,.7z
scaling = 1

[POKEMON MINI]
execs = /mnt/SDCARD/.simplemenu/launchers/pokemini_libretro
romDirs = /mnt/SDCARD/Roms/pokemini/
romExts = .min,.zip,.7z
scaling = 1

[SUPERVISION]
execs = /mnt/SDCARD/.simplemenu/launchers/potator_libretro
romDirs = /mnt/SDCARD/Roms/supervision/
romExts = .bin,.sv,.zip,.7z
scaling = 1
EOF
