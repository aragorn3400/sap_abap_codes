*&---------------------------------------------------------------------*
*&  Include           ZKO_PROJEKT_12_TOP
*&---------------------------------------------------------------------*
*REPORT  zbc402_99_conn_list MESSAGE-ID bc402.

PARAMETERS:p_file TYPE rlgrap-filename.

DATA:gt_intern TYPE TABLE OF alsmex_tabline,
     gs_intern TYPE  alsmex_tabline.


TYPES: BEGIN OF gty_itab,
         kolon1 TYPE char20,
         kolon2 TYPE char20,
         kolon3 TYPE char20,
         kolon4 TYPE char20,
         kolon5 TYPE char20,
       END OF gty_itab.

DATA:gt_itab TYPE TABLE OF gty_itab,
     gs_itab TYPE  gty_itab.


FIELD-SYMBOLS:<gfv_value>  TYPE any.
