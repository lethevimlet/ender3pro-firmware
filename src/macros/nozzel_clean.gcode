;Clean nozzle - this could be used as a macro for G12
; this file has hardcoded values, you should change
; - speeds
; - location of the brush
; it also assumes that you can use firmware retraction with G10/G11 (otherwise add your own extruder commands in case)

G0 F50000 ; set high speed
G90 ; use absolute positioning
G0 X200 Y0 Z20 ; move towards cleaning location, 20mm higher than bed
G0 X220 F2500 ; slow down
G0 X248 F250; slow down since we are at the end of the space
M106 S255; cool filament drooling from piece to ease detach
M109 S200; wait for extruder to be 200
M106 S0; turn off fan
; begin cleaning back and forth, descending 1 mm at a time

G10; firmware retraction to alleviate pressure
G91 ; relative positions

; get rid of longer part right now, diving down, then going left to the middle, up and down, then up right
G0 Z-20 F2500 ; medium speed
G0 X-10;
G0 X+1 Z+5;
G0 X-1 Z+5;
G0 X+1 Z-5;
G0 X-1 Z-5;
G0 X+1 Z+5;
G0 X-1 Z+5;
G0 X+1 Z-5;
G0 X-1 Z-5;
G0 X+1 Z+5;
G0 X-1 Z+5;
G0 X+1 Z-5;
G0 X-1 Z-5;
G0 X+10 Z+10;

G0 F5000 ; fast speed

G0 Z+10;
G90; back to absolute position
G0 X0 Y0 Z10 F50000; back home