*&---------------------------------------------------------------------*
*& Report ZKO_UEBUNG_04
*&---------------------------------------------------------------------*
*&
*&----------------------------------------------------------------------*
REPORT zko_uebung_04.

" Ein anderes Beispiel mit verschiedenen Funktionen mit der Tabelle MARC

INCLUDE zko_uebung_04_top.
INCLUDE zko_uebung_04_frm.



START-OF-SELECTION.

  PERFORM get_data.
  PERFORM set_fcat.
  PERFORM set_layout.
  PERFORM modif_fcat.
  PERFORM display_data.
