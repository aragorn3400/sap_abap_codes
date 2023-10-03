*&---------------------------------------------------------------------*
*&  Include           ZKO_UEBUNG_05_CLS
*&----------------------------------------------------------------------*

*Super Keyword------------

CLASS lcl_shape DEFINITION.
  PUBLIC SECTION.
    METHODS: constructor,
      show_shape.
ENDCLASS.

CLASS lcl_shape IMPLEMENTATION.
  METHOD constructor.
    WRITE:'Superclass SHAPE costructor is called'.
  ENDMETHOD.

  METHOD show_shape.
    WRITE:/ 'Showing Shape'.
  ENDMETHOD.
ENDCLASS.

CLASS lcl_circle DEFINITION INHERITING FROM lcl_shape.
  PUBLIC SECTION.
    METHODS: constructor,
      show_shape REDEFINITION.
ENDCLASS.

CLASS lcl_circle IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    WRITE:/ 'Subclass CIRCLE constructor is called '.
  ENDMETHOD.

  METHOD show_shape.
    super->show_shape( ).
    WRITE:/ 'Showing Circle'.
  ENDMETHOD.
ENDCLASS.
