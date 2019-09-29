# SEGA Dreamcast Kallistios Makefile

all: cannonball.bin

CXX=kos-c++

CXXFLAGS="-Isrc/main" "-DDREAMCAST" -fexceptions -frtti

OBJ= \
	src/main/trackloader.o \
	src/main/utils.o \
	src/main/hwvideo/hwroad.o \
	src/main/hwvideo/hwsprites.o \
	src/main/hwvideo/hwtiles.o \
	src/main/hwaudio/segapcm.o \
	src/main/hwaudio/ym2151.o \
	src/main/hwaudio/soundchip.o \
	src/main/romloader.o \
	src/main/video.o \
	src/main/roms.o \
	src/main/frontend/ttrial.o \
	src/main/frontend/menu.o \
	src/main/frontend/cabdiag.o \
	src/main/frontend/config.o \
	src/main/engine/outils.o \
	src/main/engine/oferrari.o \
	src/main/engine/oinputs.o \
	src/main/engine/osprite.o \
	src/main/engine/oattractai.o \
	src/main/engine/osprites.o \
	src/main/engine/opalette.o \
	src/main/engine/ohiscore.o \
	src/main/engine/oroad.o \
	src/main/engine/otraffic.o \
	src/main/engine/ocrash.o \
	src/main/engine/osmoke.o \
	src/main/engine/outrun.o \
	src/main/engine/ostats.o \
	src/main/engine/olevelobjs.o \
	src/main/engine/otiles.o \
	src/main/engine/ologo.o \
	src/main/engine/obonus.o \
	src/main/engine/ooutputs.o \
	src/main/engine/ohud.o \
	src/main/engine/audio/osoundint.o \
	src/main/engine/audio/osound.o \
	src/main/engine/omusic.o \
	src/main/engine/oinitengine.o \
	src/main/engine/omap.o \
	src/main/engine/oanimseq.o \
	src/main/dc_main.o

DEPFILES=$(OBJ:%.o=%.d)

-include $(DEPFILES)

clean:
	rm -f $(OBJ)
	rm -f $(DEPFILES)

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -MMD -c $< -o $@

cannonball.elf: $(OBJ)
	$(CXX) -o $@ $^

cannonball.bin: cannonball.elf
	sh-elf-objcopy -O binary $< $@
