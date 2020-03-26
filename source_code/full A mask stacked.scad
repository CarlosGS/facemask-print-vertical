translate([89.3,84.3,-6.74])
cube([3,1.2,160]);

translate([89.3,-85.5,-6.74])
cube([3,1.2,160]);

for (i = [0:11])
 translate([0,0,i*(13.5+0.35)])
rotate([i*180,0,0]) render()
translate([72,-13.86,-15/2-0.25])
difference() {
import("A -Principal Visera Madrid-Aprobada 1.0.stl");
cube([300,300,2],center=true);
translate([0,0,15])
cube([300,300,1],center=true);
}