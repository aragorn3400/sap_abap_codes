*&---------------------------------------------------------------------*
*&  Include           ZKO_PROJEKT_09_FRM
*&---------------------------------------------------------------------*
CALL FUNCTION 'FP_JOB_OPEN'
  CHANGING
    ie_outputparams = gs_outputparams
  EXCEPTIONS
    cancel          = 1
    usage_error     = 2
    system_error    = 3
    internal_error  = 4
    OTHERS          = 5.
IF sy-subrc <> 0.
* Implement suitable error handling here
ENDIF.


gv_name = 'ZKO_EGITIM_FORM'.
CALL FUNCTION 'FP_FUNCTION_MODULE_NAME'
  EXPORTING
    i_name     = gv_name
  IMPORTING
    e_funcname = gv_funcname.

*  CALL FUNCTION '/1BCDWB/SM00000002'
CALL FUNCTION 'gv_funcname'
  EXPORTING
    /1bcdwb/docparams  = gs_docparams
    iv_barcode         = gv_barcode
  IMPORTING
    /1bcdwb/formoutput = gs_formoutput
  EXCEPTIONS
    usage_error        = 1
    system_error       = 2
    internal_error     = 3
    OTHERS             = 4.
IF sy-subrc <> 0.
* Implement suitable error handling here
ENDIF.

CALL FUNCTION 'FP_JOB_CLOSE'
  EXCEPTIONS
    usage_error    = 1
    system_error   = 2
    internal_error = 3
    OTHERS         = 4.
IF sy-subrc <> 0.
* Implement suitable error handling here
ENDIF.
