*&---------------------------------------------------------------------*
*& Report ZKO_PROJEKT_10
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zko_projekt_10.

" Class Event Handlung, Hotspot, Pushbutton, Färbung Drilldow und Vrnte.

INCLUDE zko_projekt_10_top.
INCLUDE zko_projekt_10_cls.
INCLUDE zko_projekt_10_pbo.
INCLUDE zko_projekt_10_pai.
INCLUDE zko_projekt_10_frm.

INCLUDE zko_projekt_10_pbo_0200.
INCLUDE zko_projekt_10_pai_0200.
INCLUDE zko_projekt_10_frm_0200.

INITIALIZATION.

*AT SELECTION-SCREEN ON VALUE-REQUEST FOR variant.

  PERFORM check_variant.

START-OF-SELECTION.

  CALL SCREEN 0100.
