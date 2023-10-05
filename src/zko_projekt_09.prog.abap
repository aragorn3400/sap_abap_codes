*&---------------------------------------------------------------------*
*& Report ZKO_PROJEKT_09
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZKO_PROJEKT_09.


" Ein Beispiel für den Adobe-Formular-Driver

INCLUDE zko_projekt_09_top.
INCLUDE zko_projekt_09_frm.



START-OF-SELECTION.

  gv_barcode = '123456789'.

  gs_outputparams-nodialog = abap_true.
  gs_outputparams-preview = abap_true.
  gs_outputparams-dest = 'LP01'.
