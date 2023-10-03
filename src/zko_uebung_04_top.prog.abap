*&---------------------------------------------------------------------*
*&  Include           ZKO_UEBUNG_04_TOP
*&----------------------------------------------------------------------*

TABLES: marc.

DATA: BEGIN OF it_marc OCCURS 0,
        matnr LIKE marc-matnr,
        werks LIKE marc-werks,
        pstat LIKE marc-pstat,
        lvorm LIKE marc-lvorm,
        bwtty LIKE marc-bwtty,
        xchar LIKE marc-xchar,
        mmsta LIKE marc-mmsta,
        mmstd LIKE marc-mmstd,
      END OF it_marc.

DATA: ls_marc LIKE LINE OF it_marc.

DATA: it_fieldcat TYPE  lvc_t_fcat,
      ls_fieldcat LIKE LINE OF it_fieldcat.

DATA: is_layout TYPE  lvc_s_layo.
