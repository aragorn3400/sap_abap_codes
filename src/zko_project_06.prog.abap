*&---------------------------------------------------------------------*
*& Report ZKO_PROJECT_06
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zko_project_06.

" ALV (ABAP List Viewer) und andere Funktionalitäten


INCLUDE zko_project_06_top.
INCLUDE zko_project_06_frm.

START-OF-SELECTION.

  PERFORM get_data.
  PERFORM set_layo.
  PERFORM set_fcat.
  PERFORM display_data.
