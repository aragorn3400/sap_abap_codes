*&---------------------------------------------------------------------*
*&  Include           ZKO_PROJECT_07_TOP
*&---------------------------------------------------------------------*

  TYPES:BEGIN OF gty_table,
          id_no       TYPE n LENGTH 11,
          name(30),
          surname(30),
          firm(30),
          bank(30),
          box,
        END OF gty_table.

  TYPES:gtt_table TYPE TABLE OF gty_table WITH EMPTY KEY.

  DATA: lv_number TYPE i.

  TYPES:BEGIN OF gty_id,
          id_no TYPE n LENGTH 11,
        END OF gty_id.

  DATA:gt_id TYPE TABLE OF gty_id,
       gs_id TYPE gty_id.

  TYPES :BEGIN OF gty_firm,
           firm(30),
         END OF gty_firm.

  DATA:gt_firm TYPE TABLE OF gty_firm,
       gs_firm TYPE  gty_firm.

  TYPES:BEGIN OF gty_bank,
          bank(30),
        END OF gty_bank.

  DATA:gt_bank TYPE TABLE OF gty_bank,
       gs_bank TYPE  gty_bank.

  FIELD-SYMBOLS: <t_tab>  TYPE STANDARD TABLE,
                 <st_tab>,
                 <fs_val> TYPE any.

  DATA:dt_1 TYPE REF TO data,
       ds_1 TYPE REF TO data.

  DATA :gt_fcat TYPE lvc_t_fcat.

  DATA: gt_table TYPE gtt_table,
        gs_table TYPE gty_table.
