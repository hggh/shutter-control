$fn=80;


module pipe() {
    rotate([90, 0, 0]) {
        difference() {
            cube([12, 12, 33], center=true);
            cylinder(d=8.5, h=120, center=true);
        }
    }
}


union() {
    translate([40, 0, 0]) {
        pipe();
    }
    translate([10, 0, 0]) {
        pipe();
    }
    rotate([0, 90, 0]) { 
        translate([0, 0, 25]) {
            cylinder(d=10, h=18, center=true);
        }
    }
}