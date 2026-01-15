; Professional Firmware Configuration File
; CR10 SKR Mini E3 V3 (Sprite/T13/UBL/MPC)
;=====================================================
C10                    ; Mark as a configuration file
M117 Applying configuration
;=====================================================
; Basic Printer Preferences
G21                     ; Linear Units (mm)
M149 C                  ; Temperature units in Celsius
M255 S5                 ; Display Sleep (5 minutes)
M256 B127               ; LCD Brightness (50%)
M412 S0 D25.00          ; Filament runout sensor (OFF)
M413 S0                 ; Power-loss recovery (OFF)
;=====================================================
; Physical Settings
C100 X0 Y0              ; Physical minimums
C101 X300 Y300 Z350     ; Physical maximums
C102 X300 Y300          ; Bed size of 300x300
;=====================================================
; Bed Leveling Settings
M420 S0 Z10.00                      ; Unified Bed Leveling (OFF), 10mm Fade Height
C29 L41 R259 F41 B259 X5 Y5 T65 V1  ; Set Mesh insets, size of 5x5 and bed at 65°C
;=====================================================
; Sprite Extruder + CRTouch Settings
M851 X-31.80 Y-40.50 Z-3.68     ; Sprite Extruder Z-Probe Offset (mm)
M92 E424.90                     ; Sprite Extruder E-Steps
;=====================================================
; Temperature Settings
C104 T300                           ; Max extruder temperature 300°C (T13)
M145 S0 H205.00 B65.00 F128         ; PLA pre-heat (205/65)°C
M145 S1 H240.00 B90.00 F128         ; ABS pre-heat (240/90)°C
;=====================================================
M500                   ; Save all settings
G4 S1                  ; Wait a second
M300 P200              ; Beep
M117 Configuration Applied