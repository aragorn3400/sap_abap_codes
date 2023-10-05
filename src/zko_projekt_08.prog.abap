*&---------------------------------------------------------------------*
*& Report ZKO_PROJEKT_08
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zko_projekt_08.

" Ein Beispiel für die Aktualisierung der Tabelle durch Erstellen einer Schaltfläche mit GUI-Status

INCLUDE zko_projekt_08_top.
INCLUDE zko_projekt_08_frm.

START-OF-SELECTION.

  PERFORM get_data.
  PERFORM get_fcat.
  PERFORM get_layout.
  PERFORM display.
