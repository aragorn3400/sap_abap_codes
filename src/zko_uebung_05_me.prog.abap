*&---------------------------------------------------------------------*
*&  Include           ZKO_UEBUNG_05_ME
*&----------------------------------------------------------------------*

*  me keyword------------------
*  CLASS lcl_service DEFINITION.
*  PUBLIC SECTION.
*    DATA:number TYPE  i VALUE 100.

*    METHODS: get_number IMPORTING iv_number TYPE int2
*                        EXPORTING ev_number TYPE int2 .
*
*    METHODS:write_numbers IMPORTING iv_number TYPE int2.
*
*    METHODS: write_attribute.
*ENDCLASS.
*
*CLASS lcl_service IMPLEMENTATION.
*
*  METHOD get_number.
*    ev_number = iv_number * 2.
*  ENDMETHOD.
*
*  METHOD write_numbers.
*    WRITE: iv_number.
*  ENDMETHOD.
*
*  METHOD write_attribute.
*    DATA:number TYPE int2 VALUE 500.
*    WRITE: /'Global Value as Attribute;' , me->number.
*    WRITE: / 'Lokal Value in Metod', number.
*  ENDMETHOD.
*
*ENDCLASS.
*
*START-OF-SELECTION.
*
*  DATA:go_class  TYPE REF TO lcl_service,
*       gv_number TYPE int2.
*
*  CREATE OBJECT go_class.
*
*  CALL METHOD go_class->get_number
*    EXPORTING
*      iv_number = 10
*    IMPORTING
*      ev_number = gv_number.
*
*
*
**  go_class->write_numbers( iv_number = gv_number ).
**
**  go_class->write_attribute( ).
