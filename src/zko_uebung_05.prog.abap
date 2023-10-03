*&---------------------------------------------------------------------*
*& Report ZKO_UEBUNG_05
*&---------------------------------------------------------------------*
*&
*&----------------------------------------------------------------------*
REPORT zko_uebung_05.

"Ein Beispiel für Super und Me Schlüssel mit lokaler und untergeordneter Klasse

INCLUDE zko_uebung_05_top.
INCLUDE zko_uebung_05_cls.
INCLUDE zko_uebung_05_me.



START-OF-SELECTION.

  CREATE OBJECT go_circle.

  go_circle->show_shape( ).
