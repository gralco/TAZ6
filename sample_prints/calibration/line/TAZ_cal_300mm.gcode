M107 ;turn fan off
M106 S1
G4 S10
M107
M400
G4 S5
M106 S70 
G4 S10
M107
M400
G4 S5
M106 S125 
G4 S10
M107
M400
G4 S5
M106 S255
G4 S10
M107
M999                 ; clear errors
M400                 ; clear buffer
G21                  ; set units to millimeters
M82                  ; use absolute distances for extrusion
G92 X0 Y0 Z0 E0      ; Set cords to zero
M92 E800             ; set esteps to base 800
M500                 ; save into memory
M109 S230            ; set extruder nozzle to 230C and wait
G4 S15               ; wait 15 sec to mark extrude and mark filament
G1 E300 F90          ; move extruder 1 300mm 
M107                 ; turn off fans
G4 S1                ; wait
M400		     ; flush buffer
M104 S0              ; turn off temp
M84                  ; idle motors
M18                  ; turn off motors

