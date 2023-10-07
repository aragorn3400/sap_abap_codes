*&---------------------------------------------------------------------*
*& Report ZKO_PROJEKT_11
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zko_projekt_11.



DATA gs_bdc TYPE bdcdata.
DATA gt_bdc TYPE TABLE OF bdcdata.
PARAMETERS pa_fc TYPE sy-ucomm DEFAULT 'FC3'.


START-OF-SELECTION.
  "Startdynpro 99
  gs_bdc-program = 'SAPMZBC410_SOLUTION_01'.
  gs_bdc-dynpro  = '0099'.
  gs_bdc-dynbegin = 'X'.
  APPEND gs_bdc TO gt_bdc.
  CLEAR gs_bdc.


  gs_bdc-fnam = 'BDC_OKCODE'.
  gs_bdc-fval = 'ENTER'.
  APPEND gs_bdc TO gt_bdc.
  CLEAR gs_bdc.

  gs_bdc-program = 'SAPMZBC410_SOLUTION_01'.
  gs_bdc-dynpro  = '0100'.
  gs_bdc-dynbegin = 'X'.
  APPEND gs_bdc TO gt_bdc.
  CLEAR gs_bdc.

  gs_bdc-fnam = 'SDYN_CONN-CARRID'.
  gs_bdc-fval = 'LH'.
  APPEND gs_bdc TO gt_bdc.
  CLEAR gs_bdc.

  gs_bdc-fnam = 'SDYN_CONN-CONNID'.
  gs_bdc-fval = '0400'.
  APPEND gs_bdc TO gt_bdc.
  CLEAR gs_bdc.

  gs_bdc-fnam = 'SDYN_CONN-FLDATE'.
  gs_bdc-fval = '10.07.2021'.
  APPEND gs_bdc TO gt_bdc.
  CLEAR gs_bdc.

  "OK-Code setzen und auslösen
  gs_bdc-fnam = 'BDC_OKCODE'.
  gs_bdc-fval = pa_fc.
  APPEND gs_bdc TO gt_bdc.
  CLEAR gs_bdc.

  gs_bdc-program = 'SAPMZBC410_SOLUTION_01'.
  gs_bdc-dynpro  = '0100'.
  gs_bdc-dynbegin = 'X'.
  APPEND gs_bdc TO gt_bdc.
  CLEAR gs_bdc.

  gs_bdc-fnam = 'BDC_OKCODE'.
  gs_bdc-fval = 'SELE'.
  APPEND gs_bdc TO gt_bdc.
  CLEAR gs_bdc.

  CALL TRANSACTION 'Z01_SOLUTION' USING gt_bdc MODE 'E'.
