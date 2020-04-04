// Stacking code to optimize printing
// By CarlosGS -> https://github.com/CarlosGS/facemask-print-vertical

file = "PANTALLA_SACYL_3.1.stl";
part_height = 15;
separation = 0.35;
N_copies = 5;

for (i = [0:N_copies-1])
    translate([0,0,i*(part_height+separation)-61.1])
        import(file);

// NEEDED ONLY FOR PRUSA SLIC3R
// If you get "error empty layers" you can bypass it by having a vertical column, you can also use it to support external overhangs
columnX = 57.5;
columnY = -10.5;
translate([columnX,columnY,0])
    cylinder(r=1,h=N_copies*(part_height+separation)-15,$fn=30);
translate([-columnX,columnY,0])
    cylinder(r=1,h=N_copies*(part_height+separation)-15,$fn=30);

columnXb = 28.7; // Pilares de soporte
columnYb = 65;
translate([columnXb,columnYb,0])
    cylinder(r=1,h=N_copies*(part_height+separation)-15,$fn=30);
translate([-columnXb,columnYb,0])
    cylinder(r=1,h=N_copies*(part_height+separation)-15,$fn=30);

translate([30,-43.5,3])
    cylinder(r=0.8,h=N_copies*(part_height+separation)-15,$fn=30);
translate([39.8,-33.7,3])
    cylinder(r=0.8,h=N_copies*(part_height+separation)-15,$fn=30);

translate([-30,-43.5,3])
    cylinder(r=0.8,h=N_copies*(part_height+separation)-15,$fn=30);
translate([-39.8,-33.7,3])
    cylinder(r=0.8,h=N_copies*(part_height+separation)-15,$fn=30);
