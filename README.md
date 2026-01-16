# Ender 3 V2/S1 Custom Firmware

## mriscoc Repositories
- [Ender3V2S1 Firmware](https://github.com/mriscoc/Ender3V2S1)
- [Special Configurations](https://github.com/mriscoc/Special_Configurations)
- [Display Assets](https://github.com/mriscoc/Ender3V2S1/tree/Ender3V2S1-Released/display%20assets)

---
## Marlin Features

- BLT - BL/3D/CR Touch probe
- UBL - Unified Bed Leveling
- T13 - Pro Sprite high temp thermistor
- MPC - Model Predictive Temperature Control

---
## Printer Configurations

| Printer         | Board    | ARM Chip        | Print Area      | Screen Type | BLT  | UBL  | T13  | MPC  |
|-----------------|----------|-----------------|-----------------|-------------|------|------|------|------|
| Ender 3 Pro     | 4.2.7    | STM32F103RET6   | 220 x 220 x 250 | DWIN        | True | True | True | True |
| Ender 3 S1 Plus | F4       | STM32F401RET6   | 300 x 300 x 300 | DACAI       | True | True | True | True |
| CR10            | SKRME3V3 | STM32G0B1RE_btt | 300 x 300 x 350 | DWIN        | True | True | True | True |

---
## Sprite Extruder

| X Offset (mm) | Y Offset (mm) | Z Offset (mm) | E-Steps |
|---------------|---------------|---------------|---------|
| -31.80        | -40.5         | --            | 424.90  |

```text
M851 X-31.80 Y-40.50            ; Sprite Extruder Z-Probe Offset (mm)
M92 E424.90                     ; Sprite Extruder E-Steps
M500                            ; Save Settings
```

---
## CR10

### Configuration.h

| #define                             | Value  | Comments                                               |
|-------------------------------------|--------|--------------------------------------------------------|
| SERIAL_PORT                         | 2      | TFT Pins (Serial Port #2) => [RST\RX2\TX2\GND\5V]      |
| BAUDRATE                            | 115200 | Required Baudrate for TFT                              |
| NO_CONTROLLER_CUSTOM_WIRING_WARNING |        | Disable custom wiring warning for BTT SKR Mini E3 V3.0 |

```text
#define SERIAL_PORT 2 // TFT Pins (Serial Port #2) => [RST|RX2|TX2|GND|5V]
#define BAUDRATE 115200 // Required Baudrate for TFT
#define NO_CONTROLLER_CUSTOM_WIRING_WARNING // Disable custom wiring warning for BTT SKR Mini E3 V3.0
```

### BTT SKR-Mini E3 V3.0 pin Mapping for Ender 3 V2 Screen

- [GitHub: BTT SKR Mini E3V3 - Support Ender 3 V2](https://github.com/bigtreetech/BIGTREETECH-SKR-mini-E3/issues/424)

### IDC10P Pinout

```text
 ------------------
 | 2  4  6  8  10 |
 | 1  3  5  7   9 |
 -------|  |-------
```
![Pin Mapping](/assets/pinout.png)

| SKR Pin     | Wire Color | V2 Screen Pin |
|-------------|------------|---------------|
| 1 (BTN_ENC) | Brown      | 5 (BTN_ENC)   |
| 2 (BEEP)    | Red        | 6 (BEEP)      |
| 3 (TX)      | Orange     | 3 (RX)        |
| 4 (RESET)   | Yellow     | N/A           |
| 5 (RX)      | Green      | 4 (TX)        |
| 6 (PB9)     | Blue       | N/A           |
| 7 (BTN-E2)  | Purple     | 7 (BTN-E2)    |
| 8 (BTN-E1)  | Gray       | 8 (BTN-E1)    |
| 9 (GND)     | White      | 9 (GND)       |
| 10 (5V)     | Black      | 10 (5V)       |
