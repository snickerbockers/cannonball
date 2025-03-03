#pragma once

#warning TODO

class Timer
{
private:
    //The clock time when the timer started
    int startTicks;

    //The ticks stored when the timer was paused
    int pausedTicks;

    //The timer status
    bool paused;
    bool started;

public:
    //Initializes variables
    Timer() { }

    //The various clock actions
    void start() { }
    void stop() { }
    void pause() { }
    void unpause() { }

    //Gets the timer's time
    int get_ticks() { return 0; }

    //Checks the status of the timer
    bool is_started() { return true; }
    bool is_paused() { return false; }
};
