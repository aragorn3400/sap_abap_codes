*&---------------------------------------------------------------------*
*&  Include           ZKO_UEBUNG_03_FRM
*&---------------------------------------------------------------------*


*&---------------------------------------------------------------------*
*& Form GET_DATA
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
FORM get_data .
  SELECT    sflight~carrid
            sflight~fldate
            sflight~planetype
            sflight~price
            scarr~carrname
            scarr~url
            scarr~currcode

          FROM sflight INNER JOIN scarr
          ON sflight~carrid EQ scarr~carrid
          INTO TABLE gt_list.
ENDFORM.
*&---------------------------------------------------------------------*
*& Form SET_FCAT
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*

FORM set_fcat .

  CALL FUNCTION 'REUSE_ALV_FIELDCATALOG_MERGE'
    EXPORTING
      i_program_name         = sy-repid
*     i_internal_tabname     = 'GT_LIST'
      i_structure_name       = 'ZBK_REUSE_OO_FCAT_MERGE1_S'
      i_inclname             = sy-repid
      i_bypassing_buffer     = 'X'
    CHANGING
      ct_fieldcat            = gt_fieldcatalog
    EXCEPTIONS
      inconsistent_interface = 1
      program_error          = 2
      OTHERS                 = 3.

  READ TABLE gt_fieldcatalog ASSIGNING FIELD-SYMBOL(<gfs_fcat>) WITH KEY fieldname = 'FLDATE'.
  IF sy-subrc = 0.
    <gfs_fcat>-edit = abap_true.
  ENDIF.


ENDFORM.


*&---------------------------------------------------------------------*
*& Form SET_LAYOUT
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
FORM set_layout .
  gs_layout-colwidth_optimize = 'X'.
  gs_layout-window_titlebar = 'Reuse ALV  '.
  gs_layout-zebra = abap_true.
  gs_layout-edit = abap_true.
ENDFORM.
*&---------------------------------------------------------------------*
*& Form DISPLAY_ALV
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
FORM display_alv .
  CALL FUNCTION 'REUSE_ALV_GRID_DISPLAY'
    EXPORTING
      is_layout     = gs_layout
      it_fieldcat   = gt_fieldcatalog
    TABLES
      t_outtab      = gt_list
    EXCEPTIONS
      program_error = 1
      OTHERS        = 2.
ENDFORM.
