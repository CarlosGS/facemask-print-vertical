for(i=[-1,1]) {
translate([i*93,22.85,-8])
cylinder(r=1,h=163,$fn=16);

translate([i*29.55,76.5,-8])
cylinder(r=1,h=163,$fn=16);

}

for (i = [0:8])
 translate([0,0,i*(20+0.35)])
translate([-844.5,0,0])
import("covid19_headband_rc2.stl");