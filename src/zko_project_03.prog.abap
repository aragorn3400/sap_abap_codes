* *&---------------------------------------------------------------------*
*& Report ZKO_PROJECT_03
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zko_project_03.

" Ein einfaches Beispiel von ALV(REUSE_ALV)


INCLUDE zko_projekt_03_top.
INCLUDE zko_projekt_03_frm.


START-OF-SELECTION.

  PERFORM get_data.
  PERFORM set_fcat.
  PERFORM set_layout.
  PERFORM display_alv.
