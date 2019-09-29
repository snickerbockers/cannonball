#pragma once

#include "renderbase.hpp"

class RenderDC : public RenderBase
{
public:
    RenderDC() { }
    bool init(int src_width, int src_height, 
              int scale,
              int video_mode,
              int scanlines) { /* TODO */return false; }
    void disable() { /* TODO */ }
    bool start_frame() { /* TODO */ }
    bool finalize_frame() { /* TODO */return false; }
    void draw_frame(uint16_t* pixels) { /* TODO */ }

private:
    // Texture IDs
    const static int SCREEN = 0;
    const static int SCANLN = 1;

    // GLuint textures[2];
    // GLuint dlist; // GL display list

    // SDL_GLContext glcontext;
    // SDL_Window *window;
};
