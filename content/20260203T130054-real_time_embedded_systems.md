---
title: 2026-01-29 Scribe
date:  2026-02-03T13:00:54-05:00
tags:
mathjax: false
---

# I/O, Interrupts, Context Switch


- Hardware is usually a lot slower than Software
- Software has to know when the hardware is ready
- This can be implemented using one bit

# Type of Waiting

- Blind wait
    - Wait for a specific amount of time
- Busy Wait
    - Check for a condition  in a loop
    - Used in scenarios where performance is not important
    - This is very hard to implement when multiple I/O devices have to be chained
    - Blocking in nature
- Interrupts
    - The device will notice the microcontroller using an interrupt

# Performance Measures
- Interrupts guarentee an upperbound (assuming there is no masking)
- Busy wait is non-deterministic

1. Latency
2. Bandwidth

We will prioritize latency in this class


- Interrrupts can be software triggerred or hardware triggered
- Periodic Interrupts occur in set periods


`PRIMASK` is used to mask interrupts. During this period the current task
cannot be interrupted. The interrupts received during this period are added
to a queue and serviced when the mask is taken off.


In this calls we wil call ISR as *background threads*. Our main program will be 
the *foreground thread*


# IRQ Guidelines
- ACK the interrupt
    - SysTick auto ACKS
- `R4-R11` should be saved. Treat the interrupt as a function
- `BX LR`
- Communicate using global variables

