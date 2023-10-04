*&---------------------------------------------------------------------*
*&  Include           ZKO_UEBUNG_07_TOP
*&---------------------------------------------------------------------*

TYPES:BEGIN OF gty_table,
        id_no       TYPE n LENGTH 11,
        name(30),
        surname(30),
        firm(30),
        bank(30),
        box,
      END OF gty_table.

DATA:gs_table TYPE gty_table,
     gt_table TYPE TABLE OF gty_table.

DATA: lv_number TYPE i.

TYPES:BEGIN OF gty_id,
        id_no TYPE n LENGTH 11,
      END OF gty_id.

DATA:gt_id TYPE TABLE OF gty_id,
     gs_id TYPE gty_id.

DATA:gt_fcat TYPE lvc_t_fcat,
     gs_fcat TYPE lvc_s_fcat.

TYPES :BEGIN OF gty_firm,
         firm(30),
       END OF gty_firm.

DATA:gt_firm TYPE TABLE OF gty_firm,
     gs_firm TYPE gty_firm.

TYPES:BEGIN OF gty_bank,
        bank(30),
      END OF gty_bank.

DATA:gt_bank TYPE TABLE OF gty_bank,
     gs_bank TYPE gty_bank.

DATA:gt_fcat_new TYPE slis_t_fieldcat_alv,
     gs_fcat_new TYPE slis_fieldcat_alv.
*      gs_fcat_new LIKE LINE OF gt_fcat_new.

FIELD-SYMBOLS: <t_tab>  TYPE STANDARD TABLE,
               <st_tab>,
               <fs_val> TYPE any.

DATA:dt_1 TYPE REF TO data,
     ds_1 TYPE REF TO data.
