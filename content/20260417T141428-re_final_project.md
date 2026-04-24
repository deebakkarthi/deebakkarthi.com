---
title: Real-Time Embedded Sytems Final Project
date:  2026-04-17T14:14:28-04:00
tags:
mathjax: false
---
# Project Parts

1) Joystick Input & Crosshair Display
2) Game Scoring and Panel Display
3) Random Number Generator
4) Cube Generation & Motion
5) Interactive Sound Effects
6) Deadlock Prevention

# Joystick

- `joystick.c` has the code that interacts directly with the sensors
	- `BSP_Joystick_Init`
	- `BSP_Joystick_Input`
		- `void` function that takes in pointers for `x, y, select`
- We read this using `Producer` which is a periodic thread
	- That is why it doesn't return. There is nothing to return towards.
	- It just updates global values
- Remove the `RUNLENGTH` crap
- Cover diagnostics under `#define debug`


The rawX, rawY is 2000,2000