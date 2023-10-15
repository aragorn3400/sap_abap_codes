*&---------------------------------------------------------------------*
*&  Include           ZKO_PROJEKT_14_FRM
*&---------------------------------------------------------------------*

FORM bdc_dynpro USING program dynpro.
  CLEAR gs_bdcdata.
  gs_bdcdata-program  = program.
  gs_bdcdata-dynpro   = dynpro.
  gs_bdcdata-dynbegin = 'X'.
  APPEND gs_bdcdata TO gt_bdcdata.
  clear: gs_bdcdata.",gt_bdcdata.
ENDFORM.

*----------------------------------------------------------------------*
*        Insert field                                                  *
*----------------------------------------------------------------------*
FORM bdc_field USING fnam fval.
  IF fval <> space.
    CLEAR gs_bdcdata.
    gs_bdcdata-fnam = fnam.
    gs_bdcdata-fval = fval.
    SHIFT gs_bdcdata-fval LEFT DELETING LEADING space.
    APPEND gs_bdcdata TO gt_bdcdata.
    clear: gs_bdcdata.".,gt_bdcdata.
  ENDIF.
ENDFORM.
