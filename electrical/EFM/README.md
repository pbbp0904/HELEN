# Electric Field Meter
This is a PCB designed in KiCad for the UAH SHC HELEN project's Electric Field Meter.  This PCB is intended to receive a current on the two-input molex connector that will vary as two metal spheres spin around several axes in a thunderstorm.  The current is converted to a readable voltage and then shifted up utilizing a weighted summer and the -2.8V line used to power the opamps.  It is shifted such that it approximately maximizes the range that the MCU's ADC can read while powered with 2.8V, from ~0-1.2V.

![PCB Rendering in KiCad](https://github.com/wolfeman16/EFM/blob/master/rendering.png)

The rendering above is a rough idea of what this payload will look like with some of its components installed.
