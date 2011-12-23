# Keyboard LEDs

A script written by [Amit Singh](http://www.kernelthread.com/) for [Mac OS X Internals: A Systems Approach](http://osxbook.com/) and released in his blogpost titled "[Manipulating Keyboard LEDs Through Software](http://osxbook.com/book/bonus/chapter10/kbdleds/)", that allows you to control your keyboard LEDs (Caps lock and Num lock) in OS X.

## Compiling

    gcc -Wall -o keyboard_leds keyboard_leds.c -framework IOKit -framework CoreFoundation

## Usage

You can pass two options to keyboard_leds; `-c` (for Caps lock) and `-n` (for Num lock), without passing arguments to the options, you can query the LEDs' current states:

    ./keyboard_leds -c
    off # Caps lock is off

    ./keyboard_leds -n
    off # Num lock is off

To turn the LEDs on, simply pass `-(c|n)1`, and your (Caps|Num)lock key will turn on:

    ./keyboard_leds -c1
    off
    on

    ./keyboard_leds -n1
    off
    on

To turn them off again, try `-(c|n)0`:

    ./keyboard_leds -c0
    on
    off

    ./keyboard_leds -n0
    on
    off
