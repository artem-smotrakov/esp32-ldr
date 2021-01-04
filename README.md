# Reading an LDR on ESP32 with MicroPython

This is a demo project that shows how to read a light dependent resistor (LDR) on ESP32 with MicroPython.

## Components

1.  ESP32 development board
1.  A light dependent resistor (LDR)
1.  10 KOhm resistor
1.  Breadboard
1.  Wires

## Circuit

![Circuit](/images/circuit.png)

## Requirements

1.  `esptool` for flashing ESP32
1.  `mpfshell` for uploading files to ESP32
1.  `minicom` for connecting to ESP32 for debugging purposes

## Uploading MicroPython and the code to ESP32

The steps below were tested only on Linux (Ubuntu 18 and 20).
This may or may not work in other environments.

The directory `scripts` contains scripts that do the job.

Note that some ESP32 development boards require
pressing the `EN` button while holding the `Boot` button for switching the board to the mode
for erasing or uploading firmware.

First, erase the old firmware on the ESP32:

```bash
$ sh scripts/erase.sh
```

Next, upload MicroPython v1.13:

```bash
$ sh scripts/flash.sh
$ sh scripts/verify.sh
```

Then, upload the code to the board:

```bash
$ sh scripts/upload.sh
```

Finally, you can connect to the board with `minicom` and see the measured values of the LDR:

```bash
$ sh scripts/minicon.sh
value = 18.92552
value = 18.87668
value = 5.006105
value = 18.63248
...
```

## What it looks like

<img src="/images/device.png" alt="drawing" width="400"/>
