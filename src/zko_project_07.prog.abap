*&---------------------------------------------------------------------*
*& Report ZKO_PROJECT_07
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zko_project_07.

" Ein Beispiel für eine dynamische Tabelle mit Inline-Deklaration

INCLUDE zko_project_07_top.
INCLUDE zko_project_07_frm.


START-OF-SELECTION.

  PERFORM get_data.
  PERFORM set_fcat.
  PERFORM create_dyn_table.
  PERFORM fill_dyn_table.
  PERFORM display.
