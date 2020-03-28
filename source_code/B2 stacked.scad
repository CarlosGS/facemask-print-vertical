// Variables
number_of_parts=6;

// Additional supports
translate([89.3,84.3,-6.74])
cube([3,1.2,14*(number_of_parts)]);

translate([89.3,-85.5,-6.74])
cube([3,1.2,14*(number_of_parts)]);


// Generation
for (i = [0:number_of_parts-1])
    translate([0,0,i*(13.5+0.35)])
    rotate([i*180,0,0])
    render()
    translate([72,-13.86,-15/2-0.25])
    difference() {
        import("B2 Visera Madrid-Aprobada 1.0.stl");
        cube([300,300,2],center=true);
        translate([0,0,15])
        cube([300,300,1],center=true);
    }
