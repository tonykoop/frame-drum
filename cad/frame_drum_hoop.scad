// First-pass frame drum hoop starter. Dimensions in inches.

od = 16.0;
id = 15.25;
depth = 2.75;
inch = 25.4;

difference() {
  cylinder(h = depth * inch, d = od * inch, $fn = 160);
  translate([0, 0, -1])
    cylinder(h = (depth * inch) + 2, d = id * inch, $fn = 160);
}
