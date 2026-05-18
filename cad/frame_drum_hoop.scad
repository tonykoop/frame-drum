// Frame drum hoop starter.
// Units: inches in the family table, converted to millimeters for OpenSCAD.
// Source: family-spec.csv. Values are first-prototype assumptions until a
// physical hoop/head build is measured.

inch = 25.4;
selected_member = "FD-16";

// member_id, outside_diameter_in, inside_diameter_in, hoop_depth_in,
// wall_thickness_in, bearing_edge_radius_in, stave_count, stave_miter_deg
family_rows = [
  ["FD-14", 14.0, 13.25, 2.50, 0.375, 0.125, 16, 11.25],
  ["FD-16", 16.0, 15.25, 2.75, 0.375, 0.125, 16, 11.25],
  ["FD-18", 18.0, 17.00, 3.00, 0.500, 0.156, 20, 9.00]
];

function row_index(member_id, rows, i = 0) =
  i >= len(rows) ? 1 :
  rows[i][0] == member_id ? i :
  row_index(member_id, rows, i + 1);

row = family_rows[row_index(selected_member, family_rows)];

outside_diameter_in = row[1];
inside_diameter_in = row[2];
hoop_depth_in = row[3];
bearing_edge_radius_in = row[5];
$fn = 160;

module frame_drum_hoop() {
  difference() {
    cylinder(h = hoop_depth_in * inch, d = outside_diameter_in * inch);
    translate([0, 0, -1])
      cylinder(h = (hoop_depth_in * inch) + 2, d = inside_diameter_in * inch);
  }

  // Rounded bearing-edge preview only. Final edge treatment must be checked
  // against head material and safety/tear risk before fabrication.
  translate([0, 0, hoop_depth_in * inch])
    rotate_extrude()
      translate([(inside_diameter_in * inch / 2) + (bearing_edge_radius_in * inch), 0, 0])
        circle(r = bearing_edge_radius_in * inch);
}

frame_drum_hoop();
