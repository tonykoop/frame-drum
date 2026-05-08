# Frame Drum Print Packet

## Summary

This packet defines FD-14, FD-16, and FD-18 frame-drum studies with a membrane
model, manufacturing paths, BOM, sourcing, cut list, drawings, CNC/setup
handoff, assembly flow, risks, and validation rows.

## Shop Packet Files

- `design.md`
- `family-spec.csv`
- `bom.csv`
- `sourcing.csv`
- `cut-list.csv`
- `assembly-manual.md`
- `validation.csv`
- `drawings/frame-drum-hoop-plan.svg`
- `cnc/setup-sheet.md`
- `cad/frame_drum_hoop.scad`

## Build Order

1. Build FD-16 first.
2. Validate hoop roundness and head behavior.
3. Update `validation.csv` with measured data.
4. Branch into FD-14 and FD-18 after the baseline settles.
