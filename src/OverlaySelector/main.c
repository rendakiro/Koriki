#include <SDL/SDL.h>
#include <SDL/SDL_image.h>
#include <SDL/SDL_ttf.h>
#include <SDL/SDL_gfxPrimitives.h>
#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <stdint.h>
#include <string.h>
#include <linux/fb.h>
#include <linux/input.h>
#include <stdbool.h>
#include <sys/stat.h>
#include <sys/ioctl.h>
#include <dirent.h>

#define SCREEN_WIDTH 640
#define SCREEN_HEIGHT 480
#define SCREEN_BPP 32

#define BUTTON_A SDLK_SPACE
#define BUTTON_B SDLK_LCTRL
#define BUTTON_X SDLK_LSHIFT
#define BUTTON_Y SDLK_LALT
#define BUTTON_START SDLK_RETURN
#define BUTTON_SELECT SDLK_RCTRL
#define BUTTON_MENU SDLK_ESCAPE
#define BUTTON_L2 SDLK_TAB
#define BUTTON_R2 SDLK_BACKSPACE
#define BUTTON_RIGHT SDLK_RIGHT
#define BUTTON_LEFT SDLK_LEFT

#define CONSOLA "GB"
#define CORE "Gambatte"

#define NUM_IMAGES 3

#define TEXTO1 "video_dingux_ipu_keep_aspect"
#define TEXTO2 "video_scale_integer"
#define TEXTO3 "custom_viewport_height"
#define TEXTO4 "input_overlay"

#define VALOR1 "false"
#define VALOR2 "true"
#define VALOR3 ":/.retroarch/overlay/ATC/ATC-GB.cfg"
#define VALOR4 ""
#define VALOR5 "576"

SDL_Surface* screen = NULL;
SDL_Surface* image[NUM_IMAGES];
SDL_Surface* text_surface = NULL;
TTF_Font* font = NULL;
SDL_Rect image_rect;
SDL_Event event;
bool running = true;
int current_image = 0;

void load_image(int index) {
    char filename[16];
    sprintf(filename, "%d.png", index + 1);
    image[index] = IMG_Load(filename);
}

void update_config(const char* filename, const char* texto1, const char* valor1, const char* texto2, const char* valor2, const char* texto3, const char* valor3, const char* texto4, const char* valor4) {
    char buffer[100];
    sprintf(buffer, "/mnt/SDCARD/RetroArch/.retroarch/config/%s/%s.cfg", CORE, CONSOLA);
    if (access(buffer, F_OK) != -1) {
        remove(buffer);
    }
    FILE* file = fopen(buffer, "w");
    if (file != NULL) {
		if (strlen(texto1) > 0 && strlen(valor1) > 0) {
        fprintf(file, "%s = \"%s\"\n", texto1, valor1);
		}
		if (strlen(texto2) > 0 && strlen(valor2) > 0) {
        fprintf(file, "%s = \"%s\"\n", texto2, valor2);
		}
        if (strlen(texto3) > 0 && strlen(valor3) > 0) {
            fprintf(file, "%s = \"%s\"\n", texto3, valor3);
        }
        if (strlen(texto4) > 0 && strlen(valor4) > 0) {
            fprintf(file, "%s = \"%s\"\n", texto4, valor4);
        }
        fclose(file);
    }
}

int main(int argc, char* argv[]) {
    if (SDL_Init(SDL_INIT_VIDEO | SDL_INIT_TIMER) == -1) {
        printf("Error initializing SDL: %s\n", SDL_GetError());
        return -1;
    }
    screen = SDL_SetVideoMode(SCREEN_WIDTH, SCREEN_HEIGHT, SCREEN_BPP, SDL_SWSURFACE);
    if (screen == NULL) {
        printf("Error setting video mode: %s\n", SDL_GetError());
        return -1;
    }
    for (int i = 0; i < NUM_IMAGES; i++) {
        load_image(i);
    }

    image_rect.x = (SCREEN_WIDTH - image[current_image]->w) / 2;
    image_rect.y = (SCREEN_HEIGHT - image[current_image]->h) / 2;
    image_rect.w = image[current_image]->w;
    image_rect.h = image[current_image]->h;
	
	char FILECONFIG[100];
    sprintf(FILECONFIG, "/mnt/SDCARD/RetroArch/.retroarch/config/%s/%s.cfg", CORE, CONSOLA);
	
    while (running) {
        while (SDL_PollEvent(&event)) {
            switch (event.type) {
                case SDL_QUIT:
                    running = false;
                    break;
                case SDL_KEYDOWN:
                    if (event.key.keysym.sym == BUTTON_RIGHT) {
                            current_image = (current_image + 1) % NUM_IMAGES;
                            image_rect.x = (SCREEN_WIDTH - image[current_image]->w) / 2;
                            image_rect.y = (SCREEN_HEIGHT - image[current_image]->h) / 2;
                            break;
					} else if (event.key.keysym.sym == BUTTON_LEFT) {
                            current_image = (current_image - 1 + NUM_IMAGES) % NUM_IMAGES;
                            image_rect.x = (SCREEN_WIDTH - image[current_image]->w) / 2;
                            image_rect.y = (SCREEN_HEIGHT - image[current_image]->h) / 2;
                            break;
					} else if (event.key.keysym.sym == BUTTON_A) {
                            switch (current_image) {
                                case 0:
                                    update_config(FILECONFIG, TEXTO1, VALOR2, TEXTO2, VALOR1, "", "", "", ""); //aspect ratio
									boxColor(screen, 0, 0, 639, 479, 0x00000000);
									stringColor(screen, 320, 240, "Done! Press B to exit!", 0xFFFFFFFF);
									SDL_Flip(screen);
									SDL_Delay(3000);
                                    break;
                                case 1:
                                    update_config(FILECONFIG, TEXTO1, VALOR2, TEXTO2, VALOR2, TEXTO3, VALOR5, TEXTO4, VALOR3); //overlay
									boxColor(screen, 0, 0, 639, 479, 0x00000000);
									stringColor(screen, 320, 240, "Done! Press B to exit!", 0xFFFFFFFF);
									SDL_Flip(screen);
									SDL_Delay(3000);
                                    break;
                                case 2:
                                    update_config(FILECONFIG, TEXTO1, VALOR1, TEXTO2, VALOR1, "", "", "", ""); //fullscreen
									boxColor(screen, 0, 0, 639, 479, 0x00000000);
									stringColor(screen, 320, 240, "Done! Press B to exit!", 0xFFFFFFFF);
									SDL_Flip(screen);
									SDL_Delay(3000);
                                    break;
                            }
                            break;
					} else if (event.key.keysym.sym == BUTTON_B || event.key.keysym.sym == BUTTON_MENU) {
                            running = false;
                            break;
                    }
                    break;
            }
        }
		SDL_FillRect(screen, NULL, SDL_MapRGB(screen->format, 0, 0, 0));
		SDL_BlitSurface(image[current_image], NULL, screen, &image_rect);
		SDL_Flip(screen);
    }
	TTF_CloseFont(font);
	TTF_Quit();
    SDL_Quit();
    return 0;
}
