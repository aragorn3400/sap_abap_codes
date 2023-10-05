*&---------------------------------------------------------------------*
*& Report ZKO_PROJECT_06
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zko_project_06.

" Ein Beispiel für eine dynamische Tabelle

INCLUDE zko_project_06_top.
INCLUDE zko_project_06_frm.


START-OF-SELECTION.

  PERFORM get_data.
  PERFORM set_fcat.
  PERFORM create_dyn_table.
  PERFORM fill_dyn_table.
  PERFORM display.
