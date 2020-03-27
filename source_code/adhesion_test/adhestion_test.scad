 // Adhestion test to print parts on top of each other
// By CarlosGS -> https://github.com/CarlosGS/facemask-print-vertical

part_height = 4;
inner_diameter = 50;
thickness = 2;
separation = 0.35;
N_copies = 5;

for (i = [0:N_copies-1])
    translate([0,0,i*(part_height+separation)])
        difference() {
            cylinder(r=inner_diameter/2+thickness,h=part_height,$fn=100);
            translate([0,0,-1])
                cylinder(r=inner_diameter/2,h=part_height+2,$fn=100);
        }

// NEEDED ONLY FOR PRUSA SLIC3R
// If you get "error empty layers" you can bypass it by having a vertical column, you can also use it to support external overhangs
translate([0,inner_diameter/2,0])
    cube([1,1,N_copies*(part_height+separation)-2*separation]);