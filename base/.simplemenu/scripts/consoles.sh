consoles="/mnt/SDCARD/.simplemenu/section_groups/consoles.ini"

cat > ${consoles} <<EOF
[CONSOLES]
consoleList = NES,FDS,SNES,MSU-1,SGB,VIRTUAL BOY,SEGA SG-1000,MASTER SYSTEM,SEGA GENESIS,MSU-MD,SEGA CD,SEGA 32X,ATARI 2600,ATARI 5200,ATARI 7800,INTELLIVISION,NEO GEO CD,PC ENGINE,PC ENGINE CD,PLAYSTATION,ODYSSEY2

[NES]
execs = /mnt/SDCARD/.simplemenu/launchers/fceumm_libretro,/mnt/SDCARD/.simplemenu/launchers/nestopia_libretro,/mnt/SDCARD/.simplemenu/launchers/nestopia_miyoo_libretro
romDirs = /mnt/SDCARD/Roms/nes/
romExts = .nes,.zip,.7z

[FDS]
execs = /mnt/SDCARD/.simplemenu/launchers/fceumm_libretro,/mnt/SDCARD/.simplemenu/launchers/nestopia_libretro,/mnt/SDCARD/.simplemenu/launchers/nestopia_miyoo_libretro
romDirs = /mnt/SDCARD/Roms/fds/
romExts = .fds,.zip,.7z

[SNES]
execs = /mnt/SDCARD/.simplemenu/launchers/snes9x2005_plus_libretro,/mnt/SDCARD/.simplemenu/launchers/snes9x2005_libretro,/mnt/SDCARD/.simplemenu/launchers/snes9x2002_libretro,/mnt/SDCARD/.simplemenu/launchers/snes9x2010_libretro,/mnt/SDCARD/.simplemenu/launchers/snes9x_libretro,/mnt/SDCARD/.simplemenu/launchers/snes9x_next_libretro,/mnt/SDCARD/.simplemenu/launchers/mednafen_supafaust_plus_libretro,/mnt/SDCARD/.simplemenu/launchers/mednafen_supafaust_libretro
romDirs = /mnt/SDCARD/Roms/snes/
romExts = .smc,.sfc,.zip,.7z

[MSU-1]
execs = /mnt/SDCARD/.simplemenu/launchers/msu1_libretro
romDirs = /mnt/SDCARD/Roms/snes-msu1/
romExts = .smc,.sfc,.zip,.7z
aliasFile = /mnt/SDCARD/.simplemenu/alias_MSU-1.txt

[SGB]
execs = /mnt/SDCARD/.simplemenu/launchers/msgb_libretro,/mnt/SDCARD/.simplemenu/launchers/tgbdual_libretro
romDirs = /mnt/SDCARD/Roms/sgb/
romExts = .gb,.gbc,.zip,.7z

[VIRTUAL BOY]
execs = /mnt/SDCARD/.simplemenu/launchers/mednafen_vb_libretro
romDirs = /mnt/SDCARD/Roms/virtualboy/
romExts = .vb,.vboy,.bin,.zip,.7z

[SEGA SG-1000]
execs = /mnt/SDCARD/.simplemenu/launchers/gearsystem_libretro,/mnt/SDCARD/.simplemenu/launchers/genesis_plus_gx_libretro,/mnt/SDCARD/.simplemenu/launchers/picodrive_standalone
romDirs = /mnt/SDCARD/Roms/sg-1000/
romExts = .zip,.sg,.7z

[MASTER SYSTEM]
execs = /mnt/SDCARD/.simplemenu/launchers/picodrive_libretro,/mnt/SDCARD/.simplemenu/launchers/genesis_plus_gx_libretro,/mnt/SDCARD/.simplemenu/launchers/gearsystem_libretro,/mnt/SDCARD/.simplemenu/launchers/picodrive_standalone
romDirs = /mnt/SDCARD/Roms/mastersystem/
romExts = .zip,.sms,.7z

[SEGA GENESIS]
execs = /mnt/SDCARD/.simplemenu/launchers/picodrive_libretro,/mnt/SDCARD/.simplemenu/launchers/genesis_plus_gx_libretro,/mnt/SDCARD/.simplemenu/launchers/picodrive_standalone
romDirs = /mnt/SDCARD/Roms/megadrive/
romExts = .zip,.bin,.smd,.md,.mdx,.gen,.7z

[MSU-MD]
execs = /mnt/SDCARD/.simplemenu/launchers/MSU-MD_libretro
romDirs = /mnt/SDCARD/Roms/msu-md/
romExts = .md
aliasFile = /mnt/SDCARD/.simplemenu/alias_MSU-MD.txt

[SEGA CD]
execs = /mnt/SDCARD/.simplemenu/launchers/picodrive_libretro,/mnt/SDCARD/.simplemenu/launchers/genesis_plus_gx_libretro,/mnt/SDCARD/.simplemenu/launchers/picodrive_standalone
romDirs = /mnt/SDCARD/Roms/segacd/
romExts = .bin,.chd,.cue

[SEGA 32X]
execs = /mnt/SDCARD/.simplemenu/launchers/picodrive_libretro,/mnt/SDCARD/.simplemenu/launchers/picodrive_standalone
romDirs = /mnt/SDCARD/Roms/sega32x/
romExts = .zip,.32x,.7z

[ATARI 2600]
execs = /mnt/SDCARD/.simplemenu/launchers/stella2014_libretro
romDirs = /mnt/SDCARD/Roms/atari2600/
romExts = .bin,.a26,.zip,.7z

[ATARI 5200]
execs = /mnt/SDCARD/.simplemenu/launchers/a5200_libretro,/mnt/SDCARD/.simplemenu/launchers/atari800_libretro
romDirs = /mnt/SDCARD/Roms/atari5200/
romExts = .bin,.a52,.zip,.7z

[ATARI 7800]
execs = /mnt/SDCARD/.simplemenu/launchers/prosystem_libretro
romDirs = /mnt/SDCARD/Roms/atari7800/
romExts = .bin,.a78,.zip,.7z

[INTELLIVISION]
execs = /mnt/SDCARD/.simplemenu/launchers/freeintv_libretro
romDirs = /mnt/SDCARD/Roms/intellivision/
romExts = .int,.bin

[NEO GEO CD]
execs = /mnt/SDCARD/.simplemenu/launchers/neocd_libretro
romDirs = /mnt/SDCARD/Roms/neogeocd/
romExts = .zip,.chd

[PC ENGINE]
execs = /mnt/SDCARD/.simplemenu/launchers/mednafen_pce_fast_libretro,/mnt/SDCARD/.simplemenu/launchers/mednafen_supergrafx_libretro
romDirs = /mnt/SDCARD/Roms/pcengine/
romExts = .pce,.tg16,.cue,.zip,.7z

[PC ENGINE CD]
execs = /mnt/SDCARD/.simplemenu/launchers/mednafen_pce_fast_libretro,/mnt/SDCARD/.simplemenu/launchers/mednafen_supergrafx_libretro
romDirs = /mnt/SDCARD/Roms/pcenginecd/
romExts = .pce,.tg16,.cue,.chd,.zip,.7z

[PLAYSTATION]
execs = /mnt/SDCARD/.simplemenu/launchers/pcsx_standalone,/mnt/SDCARD/.simplemenu/launchers/pcsx_rearmed_miyoo_libretro,/mnt/SDCARD/.simplemenu/launchers/pcsx_rearmed_libretro,/mnt/SDCARD/.simplemenu/launchers/pcsx_rearmed_libretro_old,/mnt/SDCARD/.simplemenu/launchers/pcsx_rearmed_libretro_shaun
romDirs = /mnt/SDCARD/Roms/psx/
romExts = .pbp,.chd,.zip,.cue,.img,.iso,.m3u,.mdf

[ODYSSEY2]
execs = /mnt/SDCARD/.simplemenu/launchers/o2em_libretro
romDirs = /mnt/SDCARD/Roms/o2em/
romExts = .zip,.bin
EOF
