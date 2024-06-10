*&---------------------------------------------------------------------*
*& Report ZKO_PROJEKT_14
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zko_projekt_14.

" Batch-Input – Eingabe mehrerer Datensätze in die Tabelle

INCLUDE zko_projekt_14_top.
INCLUDE zko_projekt_14_frm.


START-OF-SELECTION.

  SELECT * FROM z02_schuler_02 INTO TABLE gt_schuler.

INCLUDE zko_projekt_14_per.
