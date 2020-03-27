// Stacking code to optimize printing
// By CarlosGS -> https://github.com/CarlosGS/facemask-print-vertical

file = "Visor_frame_EUROPE_ISO838_v3.stl";
part_height = 5;
separation = 0.35;
N_copies = 30;

for (i = [0:N_copies-1])
    translate([0,0,i*(part_height+separation)])
        import(file);

// NEEDED ONLY FOR PRUSA SLIC3R
// If you get "error empty layers" you can bypass it by having a vertical column, you can also use it to support external overhangs
columnX = 72;
columnY = -10;
translate([columnX,columnY,0])
    cylinder(r=1,h=N_copies*(part_height+separation),$fn=12);
