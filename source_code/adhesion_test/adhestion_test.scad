// Adhestion test to print parts on top of each other
// By CarlosGS -> https://github.com/CarlosGS/facemask-print-vertical

part_height = 4;
separation = 0.35;
N_copies = 3;

for (i = [0:N_copies-1])
    translate([0,0,i*(part_height+separation)])
        cube([3,100,part_height]);

// NEEDED ONLY FOR PRUSA SLIC3R
// If you get "error empty layers" you can bypass it by having a vertical column, you can also use it to support external overhangs
columnX = 1;
columnY = 1;
translate([columnX,columnY,0])
    cylinder(r=1,h=N_copies*(part_height+separation)-2*separation, $fn=12);
