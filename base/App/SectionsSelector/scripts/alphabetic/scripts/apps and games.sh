consoles="/mnt/SDCARD/.simplemenu/section_groups/apps and games.ini"

cat > ${consoles} <<EOF
[CONSOLES]
consoleList = APPS,ARDUINO,ATARI 2600,ATARI 5200,ATARI 7800,DAPHNE,FDS,FINALBURN NEO,GAME & WATCH,GAME BOY, GAME BOY ADVANCE,GAME BOY COLOR,GAME GEAR,GAMES,INTELLIVISION,MAME,MASTER SYSTEM,MSU-1,MSU-MD,NEO GEO CD,NEO GEO POCKET,NEO GEO POCKET COLOR,NES,NINTENDO DS,ODYSSEY2,PC ENGINE,PC ENGINE CD,PC-FX,PLAYSTATION,POKEMON MINI,SATELLAVIEW,SEGA 32X,SEGA CD,SEGA GENESIS,SEGA SG-1000,SGB,SNES,SUPERVISION,SUFAMI TURBO,VIRTUAL BOY,WONDERSWAN,WONDERSWAN COLOR

[APPS]
execs = #
romDirs = /mnt/SDCARD/.simplemenu/apps/
romExts = .sh,.fgl

[ARDUINO]
execs = /mnt/SDCARD/.simplemenu/launchers/arduous_libretro
romDirs = /mnt/SDCARD/Roms/arduboy/
romExts = .hex

[ATARI 2600]
execs = /mnt/SDCARD/.simplemenu/launchers/stella2014_libretro
romDirs = /mnt/SDCARD/Roms/atari2600/
romExts = .bin,.a26,.zip,.7z

[ATARI 5200]
execs = /mnt/SDCARD/.simplemenu/launchers/atari800_libretro
romDirs = /mnt/SDCARD/Roms/atari5200/
romExts = .bin,.a52,.zip,.7z

[ATARI 7800]
execs = /mnt/SDCARD/.simplemenu/launchers/prosystem_libretro
romDirs = /mnt/SDCARD/Roms/atari7800/
romExts = .bin,.a78,.zip,.7z

[DAPHNE]
execs = /mnt/SDCARD/.simplemenu/launchers/daphne_libretro
romDirs = /mnt/SDCARD/Roms/daphne/º
romExts = .zip

[FDS]
execs = /mnt/SDCARD/.simplemenu/launchers/fceumm_libretro
romDirs = /mnt/SDCARD/Roms/fds/
romExts = .fds,.zip,.7z

[FINALBURN NEO]
execs = /mnt/SDCARD/.simplemenu/launchers/fbneo_libretro,/mnt/SDCARD/.simplemenu/launchers/fb_32b_libretro,/mnt/SDCARD/.simplemenu/launchers/fbneo_miyoo_libretro
romDirs = /mnt/SDCARD/Roms/fbneo/
romExts = .zip
aliasFile = /mnt/SDCARD/.simplemenu/alias.txt

[GAME & WATCH]
execs = /mnt/SDCARD/.simplemenu/launchers/gw_miyoo_libretro
romDirs = /mnt/SDCARD/Roms/gameandwatch/
romExts = .mgw,.zip,.7z
scaling = 1

[GAME BOY]
execs = /mnt/SDCARD/.simplemenu/launchers/gambatte_libretro
romDirs = /mnt/SDCARD/Roms/gb/
romExts = .gb,.gz,.zip,.7z
scaling = 1

[GAME BOY ADVANCE]
execs = /mnt/SDCARD/.simplemenu/launchers/mgba_libretro
romDirs = /mnt/SDCARD/Roms/gba/
romExts = .gba,.zip,.7z
scaling = 1

[GAME BOY COLOR]
execs = /mnt/SDCARD/.simplemenu/launchers/gambatte_libretro
romDirs = /mnt/SDCARD/Roms/gbc/
romExts = .gbc,.zip,.7z
scaling = 1

[GAME GEAR]
execs = /mnt/SDCARD/.simplemenu/launchers/genesis_plus_gx_libretro
romDirs = /mnt/SDCARD/Roms/gamegear/
romExts = .zip,.gg,.7z
scaling = 1

[GAMES]
execs = #
romDirs = /mnt/SDCARD/.simplemenu/games/
romExts = .sh,.fgl

[INTELLIVISION]
execs = /mnt/SDCARD/.simplemenu/launchers/freeintv_libretro
romDirs = /mnt/SDCARD/Roms/intellivision/
romExts = .int,.bin

[MAME]
execs = /mnt/SDCARD/.simplemenu/launchers/mame2010_libretro, /mnt/SDCARD/.simplemenu/launchers/mame2015_libretro
romDirs = /mnt/SDCARD/Roms/ARCADE/
romExts = .zip
aliasFile = /mnt/SDCARD/.simplemenu/alias.txt

[MASTER SYSTEM]
execs = /mnt/SDCARD/.simplemenu/launchers/genesis_plus_gx_libretro
romDirs = /mnt/SDCARD/Roms/mastersystem/
romExts = .zip,.sms,.7z

[MSU-1]
execs = /mnt/SDCARD/.simplemenu/launchers/msu1_libretro
romDirs = /mnt/SDCARD/Roms/snes-msu1/
romExts = .smc,.sfc,.zip,.7z
aliasFile = /mnt/SDCARD/.simplemenu/alias_MSU-1.txt

[MSU-MD]
execs = /mnt/SDCARD/.simplemenu/launchers/MSU-MD_libretro
romDirs = /mnt/SDCARD/Roms/msu-md/
romExts = .md
aliasFile = /mnt/SDCARD/.simplemenu/alias_MSU-MD.txt

[NEO GEO CD]
execs = /mnt/SDCARD/.simplemenu/launchers/neocd_libretro
romDirs = /mnt/SDCARD/Roms/neogeocd/
romExts = .zip,.chd,.cue

[NEO GEO POCKET]
execs = /mnt/SDCARD/.simplemenu/launchers/mednafen_ngp_libretro
romDirs = /mnt/SDCARD/Roms/ngp/
romExts = .ngp,.ngc,.npc,.zip,.7z
scaling = 1

[NEO GEO POCKET COLOR]
execs = /mnt/SDCARD/.simplemenu/launchers/mednafen_ngp_libretro
romDirs = /mnt/SDCARD/Roms/ngpc/
romExts = .ngp,.ngc,.ngpc,.npc,.zip,.7z
scaling = 1

[NES]
execs = /mnt/SDCARD/.simplemenu/launchers/fceumm_libretro
romDirs = /mnt/SDCARD/Roms/nes/
romExts = .nes,.zip,.7z

[NINTENDO DS]
execs = /mnt/SDCARD/.simplemenu/launchers/drastic_standalone
romDirs = /mnt/SDCARD/Roms/nds/
romExts = .nds,.7z,.zip,.rar
scaling = 1

[ODYSSEY2]
execs = /mnt/SDCARD/.simplemenu/launchers/o2em_libretro
romDirs = /mnt/SDCARD/Roms/o2em/
romExts = .zip,.bin

[PC ENGINE]
execs = /mnt/SDCARD/.simplemenu/launchers/mednafen_pce_fast_libretro,/mnt/SDCARD/.simplemenu/launchers/mednafen_supergrafx_libretro
romDirs = /mnt/SDCARD/Roms/pcengine/
romExts = .pce,.tg16,.cue,.zip,.7z

[PC ENGINE CD]
execs = /mnt/SDCARD/.simplemenu/launchers/mednafen_pce_fast_libretro,/mnt/SDCARD/.simplemenu/launchers/mednafen_supergrafx_libretro
romDirs = /mnt/SDCARD/Roms/pcenginecd/
romExts = .pce,.tg16,.cue,.chd,.zip,.7z

[PC-FX]
execs = /mnt/SDCARD/.simplemenu/launchers/mednafen_pcfx_libretro
romDirs = /mnt/SDCARD/Roms/pcfx/
romExts = .cue,.chd,.zip,.7z

[PLAYSTATION]
execs = /mnt/SDCARD/.simplemenu/launchers/pcsx_rearmed_miyoo_libretro,/mnt/SDCARD/.simplemenu/launchers/pcsx_rearmed_libretro
romDirs = /mnt/SDCARD/Roms/psx/
romExts = .pbp,.chd,.zip,.cue,.img,.iso,.m3u,.mdf

[POKEMON MINI]
execs = /mnt/SDCARD/.simplemenu/launchers/pokemini_libretro
romDirs = /mnt/SDCARD/Roms/pokemini/
romExts = .min,.zip,.7z
scaling = 1

[SATELLAVIEW]
execs = /mnt/SDCARD/.simplemenu/launchers/snes9x_libretro
romDirs = /mnt/SDCARD/Roms/satellaview/
romExts = .bs,.zip,.7z

[SEGA 32X]
execs = /mnt/SDCARD/.simplemenu/launchers/picodrive_libretro
romDirs = /mnt/SDCARD/Roms/sega32x/
romExts = .zip,.32x,.7z

[SEGA CD]
execs = /mnt/SDCARD/.simplemenu/launchers/genesis_plus_gx_libretro
romDirs = /mnt/SDCARD/Roms/segacd/
romExts = .chd,.cue

[SEGA GENESIS]
execs = /mnt/SDCARD/.simplemenu/launchers/genesis_plus_gx_libretro
romDirs = /mnt/SDCARD/Roms/megadrive/
romExts = .zip,.bin,.smd,.md,.mdx,.gen,.7z

[SEGA SG-1000]
execs = /mnt/SDCARD/.simplemenu/launchers/genesis_plus_gx_libretro
romDirs = /mnt/SDCARD/Roms/sg-1000/
romExts = .zip,.sg,.7z

[SGB]
execs = /mnt/SDCARD/.simplemenu/launchers/msgb_libretro
romDirs = /mnt/SDCARD/Roms/sgb/
romExts = .gb,.gbc,.zip,.7z

[SNES]
execs = /mnt/SDCARD/.simplemenu/launchers/snes9x_libretro,/mnt/SDCARD/.simplemenu/launchers/mednafen_supafaust_libretro,/mnt/SDCARD/.simplemenu/launchers/mednafen_supafaust_plus_libretro,/mnt/SDCARD/.simplemenu/launchers/snes9x2005_plus_libretro,/mnt/SDCARD/.simplemenu/launchers/snes9x2005_libretro,/mnt/SDCARD/.simplemenu/launchers/snes9x2002_libretro,/mnt/SDCARD/.simplemenu/launchers/snes9x2010_libretro,/mnt/SDCARD/.simplemenu/launchers/snes9x_next_libretro
romDirs = /mnt/SDCARD/Roms/snes/
romExts = .smc,.sfc,.zip,.7z

[SUPERVISION]
execs = /mnt/SDCARD/.simplemenu/launchers/potator_libretro
romDirs = /mnt/SDCARD/Roms/supervision/
romExts = .bin,.sv,.zip,.7z
scaling = 1

[SUFAMI TURBO]
execs = /mnt/SDCARD/.simplemenu/launchers/snes9x_libretro
romDirs = /mnt/SDCARD/Roms/sufami/
romExts = .st,.zip,.7z

[VIRTUAL BOY]
execs = /mnt/SDCARD/.simplemenu/launchers/mednafen_vb_libretro
romDirs = /mnt/SDCARD/Roms/virtualboy/
romExts = .vb,.vboy,.bin,.zip,.7z

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
EOF