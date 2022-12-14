M190 S{material_bed_temperature_layer_0} ;Heat up bed
M109 S150 ;Heat up extruder to non-oozing temperature of 150 Celsius
G28 ;Home
G29 ;BLTouch
G92 E0 ;Reset Extruder
M109 S{material_print_temperature_layer_0} ;Finish heating the extruder to the g-code file specified print temperature
@nozzle_clean
G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X0.1 Y20 Z0.3 F5000.0 ; Move to start position
G1 X0.1 Y200.0 Z0.3 F1500.0 E15 ; Draw the first line
G1 X0.4 Y200.0 Z0.3 F5000.0 ; Move to side a little
G1 X0.4 Y20 Z0.3 F1500.0 E30 ; Draw the second line
G92 E0 ; Reset Extruder
G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X5 Y20 Z0.3 F5000.0 ; Move over to prevent blob squish