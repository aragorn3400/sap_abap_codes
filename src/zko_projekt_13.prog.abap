*&---------------------------------------------------------------------*
*& Report Z02_TABELLE_INFO_VERGLEICHEN
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zko_projekt_13.

"Vergleichsbericht zur Mitarbeitererfahrung

INCLUDE ZKO_PROJEKT_13_TOP.
INCLUDE ZKO_PROJEKT_13_PBO.
INCLUDE ZKO_PROJEKT_13_PAI.
INCLUDE ZKO_PROJEKT_13_FRM.


START-OF-SELECTION.





  CALL SCREEN 100.
