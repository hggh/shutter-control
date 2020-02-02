
BASE_PLATE_X = 50;
BASE_PLATE_Y = 20;
BASE_PLATE_Z = 10;
union() {
    cube([BASE_PLATE_X, BASE_PLATE_Y, BASE_PLATE_Z]);
    translate([0, -10, - 55 + BASE_PLATE_Z]) {
        difference() {
            union() {
                cube([BASE_PLATE_X, 10, 55]);
                translate([0, 10, 0]) {
                    cube([BASE_PLATE_X, 14, 39]);
                }
            }
            translate([BASE_PLATE_X / 2, 30, 10]) {
                rotate([90, 0, 0]) {
                    // Bohrung befestigung an Gitter
                    cylinder(d=5.8, h=60, $fn=180);
                }
            }
        }
    }
    translate([BASE_PLATE_X / 2, -0, BASE_PLATE_Z]) {
        cylinder(d=13, h=5, $fn=180);
    }
    translate([BASE_PLATE_X / 2, -0, BASE_PLATE_Z + 5]) {
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
    }
}