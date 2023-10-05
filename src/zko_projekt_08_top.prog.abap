*&---------------------------------------------------------------------*
*&  Include           ZKO_PROJEKT_08_TOP
*&---------------------------------------------------------------------*

  DATA: gt_scarr    TYPE TABLE OF scarr,
        gs_scarr    TYPE scarr,
        gt_scarr_01 TYPE TABLE OF scarr,
        gt_fcat     TYPE lvc_t_fcat,
        gs_layout   TYPE lvc_s_layo.

  DATA: lc_grid         TYPE REF TO cl_gui_alv_grid,
        lt_row_no       TYPE lvc_t_roid,
        ls_row_no       TYPE lvc_s_roid,
        lv_no_lines     TYPE i,
        lt_table_update TYPE TABLE OF zko_scarr_01,
        lt_fcat_update  TYPE slis_t_fieldcat_alv,
        ls_fcat_update  TYPE slis_fieldcat_alv,
        ls_table_update TYPE zko_scarr_01,
        answer_update.
