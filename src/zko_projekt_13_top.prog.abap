*&---------------------------------------------------------------------*
*&  Include           ZKO_PROJEKT_13_TOP
*&---------------------------------------------------------------------*

DATA:go_alv TYPE REF TO cl_gui_alv_grid,
     go_cont TYPE REF TO cl_gui_custom_container.

*TYPES:BEGIN OF gty_firm,
*        kursnummer    TYPE znummer,
*        name          TYPE  zname,
*        vorname       TYPE   zvorname,
*        anfang_datum  TYPE   zdatum,
*        arbeits_jahr  TYPE c LENGTH 2,
*        arbeits_monat TYPE c LENGTH 2,
*        arbeits_tag   TYPE c LENGTH 2,
*      END OF gty_firm.



DATA:gt_firm TYPE TABLE OF z02_firm_st,    "DB structer tanımladık fcat fonksiyonu için.
     gs_firm TYPE z02_firm_st.


DATA:gt_fcat TYPE lvc_t_fcat,
     gs_fcat TYPE lvc_s_fcat.

data:gs_layout TYPE lvc_s_layo.
