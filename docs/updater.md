# Update Anet a8 Firmware using Octoprint firmware updater plugin
<!-- MDTOC maxdepth:6 firsth1:2 numbering:0 flatten:0 bullets:1 updateOnSave:1 -->

- [Add firmware updater plugin in Octoprint](#add-firmware-updater-plugin-in-octoprint)   
- [Configure Arduino IDE](#configure-arduino-ide)   
- [Download Marlin firmware from official site](#download-marlin-firmware-from-official-site)   
- [Change firmware values and compile .HEX file](#change-firmware-values-and-compile-hex-file)   
- [Flash Anet board from Octoprint firmware updater plugin](#flash-anet-board-from-octoprint-firmware-updater-plugin)   

<!-- /MDTOC -->

## Add firmware updater plugin in Octoprint
**Setup plugin** -> https://github.com/OctoPrint/OctoPrint-FirmwareUpdater

Install using this URL -> https://github.com/OctoPrint/OctoPrint-FirmwareUpdater/archive/master.zip

Install AVRDUDE (Raspberry)
```
sudo apt-get update
sudo apt-get install avrdude
```

Config plugin->

- Flash method: avrdude (Atmel AVR family)
- AVR MCU: ATmega1284p
- Path to avrdude: /usr/bin/avrdude (Test)
- AVR Programmer Type: arduino
- Advanced settings: baud rate: 57600
- Save settings

Now plugin is ready to open a valid .HEX file (no bootloader) and flash ANet board with new custom firmware.

## Configure Arduino IDE

Da skynet serve scaricare il file per la gestione della scheda Anet A8 ver 1.0 che si trova qui (compatibile mac e Windows)

https://github.com/SkyNet3D/anet-board

e scompariamo nella cartella Documenti/Arduino

## Download Marlin firmware from official site

Official site, download latest version (1.1.9) -> http://marlinfw.org/meta/download/

Extract zip file and search for `Marlin.ino` file. `CopyConfiguration.h` and `Configuration_adv.h` files from `Marlin/example_configurations/Anet/A8/toMarlin.ino` folder overwriting files.

## Change firmware values and compile .HEX file

In Arduino IDE go to `configuration.h` tab and set values as you prefer. Marlin-config is other tool can be usefull to set values in an easy way – > https://www.instructables.com/id/Marlin-config/. Original sample `configuration.h` from downloaded Marlin Firmware is ok to basic print operation and can be export as `.HEX` file without modifications.

Export valid `.HEX` file for Octoprint firmware updater plugin -> “Export compiled Binary”

You'll get a `Marlin.ino.sanguino.hex` in the root of `Marlin.ino`.

## Flash Anet board from Octoprint firmware updater plugin

– Open Octoprint firmware updater plugin and open previous created .HEX file.
– Wait for flash operation (1 minute …)
– Check new firmware version in Octoprint printer terminal:

```Send: N1 M115*39Recv: FIRMWARE_NAME:Marlin 1.1.9 (Github) SOURCE_CODE_URL:https://github.com/MarlinFirmware/Marlin PROTOCOL_VERSION:1.0 MACHINE_TYPE:3D Printer EXTRUDER_COUNT:1```

---
[juanmasaiz.wordpress.com](https://juanmasaiz.wordpress.com/2018/08/18/update-anet-a8-firmware-using-octoprint-firmware-updater-plugin/)
