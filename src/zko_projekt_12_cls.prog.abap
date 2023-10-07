*&---------------------------------------------------------------------*
*&  Include           ZKO_PROJEKT_12_CLS
*&---------------------------------------------------------------------*


CLASS lcl_handler DEFINITION.

  PUBLIC SECTION.

    CLASS-METHODS:
      on_double_click FOR EVENT double_click
                  OF if_salv_events_actions_table
        IMPORTING row column.

ENDCLASS.                    "lcl_handler DEFINITION


CLASS lcl_handler IMPLEMENTATION.

  METHOD on_double_click.

    DATA ls_conn LIKE LINE OF gt_conn.

    READ TABLE gt_conn INTO ls_conn INDEX row.

    CASE column.

      WHEN 'CARRID'.
        SET PARAMETER ID 'CAR' FIELD ls_conn-carrid.
        CALL TRANSACTION 'BC402MCAR' AND SKIP FIRST SCREEN.
      WHEN OTHERS.
        SUBMIT zbc402_99_flight_list_osql
                WITH pa_car = ls_conn-carrid
                WITH so_con = ls_conn-connid
                " VIA SELECTION-SCREEN
                AND RETURN.

    ENDCASE.

  ENDMETHOD.                    "on_double_click

ENDCLASS.                    "lcl_handler IMPLEMENTATION
