*&---------------------------------------------------------------------*
*&  Include           ZKO_PROJEKT_13_FRM
*&---------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*&      Form  FILL_TABLE
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*----------------------------------------------------------------------*
FORM fill_table .
  LOOP AT gt_firm INTO gs_firm.

    IF gs_firm-anfang_datum(4) = sy-datum(4) AND gs_firm-anfang_datum+4(2) = sy-datum+4(2) .
      gs_firm-arbeits_jahr = sy-datum(4) - gs_firm-anfang_datum(4).
      gs_firm-arbeits_monat = sy-datum+4(2) - gs_firm-anfang_datum+4(2).
      gs_firm-arbeits_tag = sy-datum+6(2) - gs_firm-anfang_datum+6(2).


    ELSEIF gs_firm-anfang_datum+4(2) < sy-datum+4(2) AND  gs_firm-anfang_datum+6(2) < sy-datum+6(2)  .  "Wenn der aktuelle Monat und Tag größer als das Eintragsdatum sind.
      gs_firm-arbeits_jahr = sy-datum(4) - gs_firm-anfang_datum(4).
      gs_firm-arbeits_monat = sy-datum+4(2) - gs_firm-anfang_datum+4(2).
      gs_firm-arbeits_tag = sy-datum+6(2) - gs_firm-anfang_datum+6(2).

    ELSEIF gs_firm-anfang_datum+4(2) < sy-datum+4(2) AND "Wenn der aktuelle Tag kleiner oder gleich dem Eintragsdatum ist.
       sy-datum+6(2) <  gs_firm-anfang_datum+6(2) OR sy-datum+6(2) =  gs_firm-anfang_datum+6(2).

      gs_firm-arbeits_jahr = sy-datum(4) - gs_firm-anfang_datum(4).
      gs_firm-arbeits_monat = ( sy-datum+4(2) - gs_firm-anfang_datum+4(2) ) - 1.
      gs_firm-arbeits_tag = ( 30 - gs_firm-anfang_datum+6(2) ) + sy-datum+6(2).

    ELSEIF sy-datum+4(2) < gs_firm-anfang_datum+4(2)   AND sy-datum+6(2) >  gs_firm-anfang_datum+6(2) OR" Wenn der aktuelle Monat  kleiner oder gleich dem Eintragsdatum ist.
      sy-datum+4(2) = gs_firm-anfang_datum+4(2).
      gs_firm-arbeits_monat = ( 12 - gs_firm-anfang_datum+4(2) ) + sy-datum+4(2) .
      gs_firm-arbeits_jahr = ( sy-datum(4) - gs_firm-anfang_datum(4) ) - 1 .
      gs_firm-arbeits_tag = sy-datum+6(2) - gs_firm-anfang_datum+6(2).

    ELSEIF sy-datum+4(2) < gs_firm-anfang_datum+4(2) OR sy-datum+4(2) = gs_firm-anfang_datum+4(2) AND "Wenn der aktuelle Monat und Tag kleiner oder gleich dem Eintragsdatum ist
           sy-datum+6(2) <  gs_firm-anfang_datum+6(2) OR sy-datum+6(2) =  gs_firm-anfang_datum+6(2) .

      gs_firm-arbeits_monat = ( ( 12 - gs_firm-anfang_datum+4(2) ) + sy-datum+4(2) ) - 1 .
      gs_firm-arbeits_jahr = ( sy-datum(4) - gs_firm-anfang_datum(4) ) - 1 .
      gs_firm-arbeits_tag = ( 30 - gs_firm-anfang_datum+6(2) ) + sy-datum+6(2).




    ENDIF.

    MODIFY gt_firm FROM gs_firm .
*
  ENDLOOP.

  SORT gt_firm BY anfang_datum.

ENDFORM.
*&---------------------------------------------------------------------*
*&      Form  GET_TABLE
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*----------------------------------------------------------------------*
FORM get_table .
  SELECT * FROM z02_firm_01 INTO CORRESPONDING FIELDS OF TABLE gt_firm.
ENDFORM.
*&---------------------------------------------------------------------*
*&      Form  DISPLAY_TABLE
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*----------------------------------------------------------------------*
FORM display_table .
  PERFORM set_fcat.


  CREATE OBJECT go_cont
    EXPORTING
      container_name = 'CC_ALV'.

  CREATE OBJECT go_alv
    EXPORTING
      i_parent = go_cont.

  CALL FUNCTION 'LVC_FIELDCATALOG_MERGE'
    EXPORTING
      i_structure_name       = 'Z02_FIRM_ST'
    CHANGING
      ct_fieldcat            = gt_fcat
    EXCEPTIONS
      inconsistent_interface = 1
      program_error          = 2
      OTHERS                 = 3.

  PERFORM fill_layo.
*
  CALL METHOD go_alv->set_table_for_first_display
    EXPORTING
      is_layout       = gs_layout
*     i_structure_name = 'Z02_FIRM_ST'
    CHANGING
      it_outtab       = gt_firm
      it_fieldcatalog = gt_fcat.

*

ENDFORM.
*&---------------------------------------------------------------------*
*&      Form  SET_FCAT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*----------------------------------------------------------------------*
FORM set_fcat .

  gs_fcat-fieldname = 'ARBEITS_JAHR'.
  gs_fcat-coltext = 'ARB. JAHR' .
  gs_fcat-outputlen = 10.
  APPEND gs_fcat TO gt_fcat.
  CLEAR gs_fcat.

  gs_fcat-fieldname = 'ARBEITS_MONAT'.
  gs_fcat-coltext = 'ARB.MONAT' .
  gs_fcat-outputlen = 10.
  APPEND gs_fcat TO gt_fcat.
  CLEAR gs_fcat.

  gs_fcat-fieldname = 'ARBEITS_TAG'.
  gs_fcat-coltext = 'ARB.TAG' .
  gs_fcat-outputlen = 10.
  APPEND gs_fcat TO gt_fcat.
  CLEAR gs_fcat.

ENDFORM.
*&---------------------------------------------------------------------*
*&      Form  FILL_LAYO
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*----------------------------------------------------------------------*
FORM fill_layo .

*  gs_layout-cwidth_opt = abap_true.
  gs_layout-zebra = abap_true.

ENDFORM.
