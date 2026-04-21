# Figma Audit Notes (MVP)

## Source

- File key: `KgC1OX4weixbznEcWmlxqa`
- Primary nodes inspected:
  - Home: `1:2`
  - Logar: `15:462`
  - Cadastrar: `15:464`

## Design decisions normalized for Flutter

- Base page background: `#FCF1DA`
- Header band: `#3D5B4B`
- CTA/button tone: `#D28727`
- Card/image placeholder tone frequently appears as `#F3B84D`
- Body inputs use light gray fill and rounded corners
- Rounded corners are mostly 8 and 12

## Components inferred for reuse

- Primary button
- Input field
- Top header block with logo + navigation chips
- News card
- Event card

## Fidelity constraints for next iteration

- Swap placeholder images for real image assets
- Match exact font family from Figma (Kaisei Decol / Inter) through asset fonts
- Add exact spacing refinements by screen size bucket