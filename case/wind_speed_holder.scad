BASE_X = 50;

union() {
    difference() {
        cylinder(d=13, h=10, $fn=180);
        rotate([90, 0, 0]) {
            translate([0, 6.6, -10]) {
                cylinder(d=3.6, h=40, $fn=180);
            }
        }
    }
    translate([0, 0, 10]) {
        cylinder(d=7, h=7, $fn=180);
    }
    translate([0, 0, -10]) {
        cylinder(d=14, h=10, $fn=180);
    }
    translate([- BASE_X / 2, -8, -25]) {
        difference() {
            cube([BASE_X, 16, 15]);
            rotate([90, 0, 0]) {
                translate([40, 8, -20]) cylinder(d=8.5, h=40, $fn=180);
                translate([10, 8, -20]) cylinder(d=8.5, h=40, $fn=180);
            }
        }
    }
}
