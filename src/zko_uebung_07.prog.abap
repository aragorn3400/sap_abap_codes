*&---------------------------------------------------------------------*
*& Report ZKO_UEBUNG_07
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zko_uebung_07.

" Ein Beispiel für eine dynamische Tabelle

INCLUDE zko_uebung_07_top.
INCLUDE zko_uebung_07_frm.


START-OF-SELECTION.

  PERFORM get_data.
  PERFORM set_fcat.
  PERFORM create_dyn_table.
  PERFORM fill_dyn_table.
  PERFORM display.
