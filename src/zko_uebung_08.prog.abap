*&---------------------------------------------------------------------*
*& Report ZKO_UEBUNG_08
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zko_uebung_08.

" Ein Beispiel für eine dynamische Tabelle mit Inline-Deklaration

INCLUDE zko_uebung_08_top.
INCLUDE zko_uebung_08_frm.


START-OF-SELECTION.

  PERFORM get_data.
  PERFORM set_fcat.
  PERFORM create_dyn_table.
  PERFORM fill_dyn_table.
  PERFORM display.
