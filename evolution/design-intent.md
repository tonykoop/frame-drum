# Design Intent — frame-drum rev A

- Master CAD: `cad/frame_drum_hoop.scad` (sha256: 90568a23225f12f86e1fabf8ad95a1fc086ab896aa372453d0e5b0184ac06164), driven by `family-spec.csv` (sha256: 92b31b8efeafc5e2364ba31a31f069081da796329408e3d7016ac29af9c355f3)
- Function: Shallow single-head membrane frame drum family (FD-14/FD-16/FD-18), a hardwood hoop with a natural or synthetic head under tension. The head carries the acoustic load as a tensioned circular membrane (Bessel-mode approximation, `design.md` governing model); the hoop is the structural rim and bearing-edge surface, not a resonating cavity (frame drums have no significant Helmholtz coupling). Baseline build target is the FD-16 member (16 in outside diameter, 2.75 in hoop depth, 0.375 in wall).
- Environment: hand- or lap-played instrument; natural hide heads respond to humidity (validation-loop.csv tracks 24 hr tuning drift). Head tension is a sustained structural load on the hoop and bearing edge.
- Target qty: 1 (prototype, FD-16 baseline). Deadline: TBD. Budget/unit ceiling: TBD.

## Critical dimensions (carry tolerances)

| Feature | Nominal | Tolerance | Why critical | Source |
| --- | --- | --- | --- | --- |
| Outside diameter (FD-16) | 16.0 in | roundness within 1/16 in after tensioning | head seating, hoop roundness | family-spec.csv row FD-16 (design_table_backed) |
| Inside diameter (FD-16) | 15.25 in | derived from outside dia − 2×wall | head span / acoustic radius | family-spec.csv row FD-16 |
| Hoop depth (FD-16) | 2.75 in | measure four quadrants | hand access, ergonomics, rim stiffness | family-spec.csv row FD-16 / validation.csv |
| Wall thickness (FD-16) | 0.375 in | measure four quadrants, watch scarf/stave seams | structural load path under head tension | family-spec.csv row FD-16 / validation.csv |
| Bearing edge radius (FD-16) | 0.125 in | hand inspection, no sharp discontinuities | prevents head tearing (risks.md) | family-spec.csv row FD-16 / validation.csv |
| Fundamental (low/med/high tension) | TBD Hz (membrane model estimate only) | tuner/FFT capture at 3 tension levels | tuning target vs. governing model | design.md membrane model (measurement_required) |
| Stave count / miter (if stave-built) | 16 staves / 11.25 deg | dry-fit gate before glue-up | seam integrity under head tension | family-spec.csv row FD-16 |

## Incidental (free for DFM)

- Rim finish/decoration, tradition-specific cosmetic details (lacing pattern color, painted head motifs), non-mating surface treatment, stand/mount hardware.

## Must-nots (DFM may never violate)

- Bearing edge must have no sharp discontinuities that can cut the head (risks.md, Structural).
- Do not thin the wall below the family-spec baseline without re-running the hoop-roundness and structural validation rows (risks.md, Structural — stave seams can open under head tension if glue surfaces are inaccurate).
- Do not present tradition-specific variants (bodhrán, daf, riq, bendir, pandeiro, shamanic drums) as culturally authoritative without sources and context (risks.md, Cultural/Public).
- Credit Feather Song Drums for the inflatable-tuning inspiration; do not present it as an original invention here (design.md Assumptions).
- Membrane/pitch formulas are first-order only — do not present a predicted fundamental as a fabrication-authority tuning target until measured (risks.md, Acoustic).

## Material intent

- Preferred: straight-grained hardwood hoop (ash, oak, cherry, or maple) per bom.csv; natural (goat/deer/elk) or synthetic head per bom.csv; hide glue or water-resistant wood glue for joinery.
- Acceptable subs: per sourcing.csv (spec-first; live prices unverified).
- Forbidden: none recorded.

## Stage status

Stage 0 intake complete 2026-07-01. Gate A (Alpha shop compile) NOT yet run — no concessions logged, nothing presented as shippable. No physical hoop or head has been built or measured for this family.
