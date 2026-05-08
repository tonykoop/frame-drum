# SolidWorks MasterLayout Plan

## Purpose

Create a parametric hoop part driven by `family-spec.csv`. This is a handoff
plan, not verified SolidWorks CAD.

## Global Variables

- `outside_diameter_in`
- `inside_diameter_in`
- `hoop_depth_in`
- `wall_thickness_in`
- `head_diameter_in`
- `bearing_edge_radius_in`
- `stave_count`
- `stave_miter_deg`

## Master Sketch

Use a front-plane centerline sketch for the hoop cross-section, then revolve or
extrude depending on the selected construction method. Keep the bearing edge as
a named feature so the radius can vary by configuration.

## Configurations

Import `family-spec.csv` through `generate_sw_design_table.py` to create FD-14,
FD-16, and FD-18 configurations.
