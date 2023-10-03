*&---------------------------------------------------------------------*
*& Report ZKO_UEBUNG_06
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zko_uebung_06.

" ALV (ABAP List Viewer) und andere Funktionalitäten


INCLUDE zko_uebung_6_top.
INCLUDE zko_uebung_6_frm.

START-OF-SELECTION.

  PERFORM get_data.
  PERFORM set_layo.
  PERFORM set_fcat.
  PERFORM display_data.
