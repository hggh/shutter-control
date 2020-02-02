$fn = 80;


union() {
    cylinder(d=2.9, h=35);
    translate([0,0, 5]) cylinder(d=5, h=30);
    translate([9.8, -78.80, 0]) {
        // links unten
        cylinder(d=2.9, h=35);
        translate([0,0, 5]) cylinder(d=5, h=30);
    }
    translate([56.60, 4.51, 0]) {
        // rechts oben
        cylinder(d=2.9, h=35);
        translate([0,0, 5]) cylinder(d=5, h=30);
        translate([0, - 53.70,0]) {
            // rechts unten
            cylinder(d=2.9, h=35);
            translate([0,0, 5]) cylinder(d=5, h=30);
        }
    }
    translate([-3, -82, 35]) {
        difference() {
            cube([65, 89, 2]);
            translate([30, 30, -1]) {
                cylinder(d=40, h=20);
            }
            translate([30, 50, -1]) {
                cylinder(d=40, h=20);
            }
        }
    }
}