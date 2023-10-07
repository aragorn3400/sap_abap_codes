*&---------------------------------------------------------------------*
*&  Include           ZKO_PROJEKT_12_MAIN
*&---------------------------------------------------------------------*

AT SELECTION-SCREEN ON VALUE-REQUEST FOR p_file.
  CALL FUNCTION 'F4_FILENAME'
*   EXPORTING
*     PROGRAM_NAME        = SYST-CPROG
*     DYNPRO_NUMBER       = SYST-DYNNR
*     FIELD_NAME          = ' '
    IMPORTING
      file_name = p_file.



  CALL FUNCTION 'ALSM_EXCEL_TO_INTERNAL_TABLE'
    EXPORTING
      filename                = p_file
      i_begin_col             = 1             "1.Kolon
      i_begin_row             = 2              "2.Satır,Bailık bilgilerini istemiyorsak 2den başlatırız.
      i_end_col               = 5              "Son kolon
      i_end_row               = 15             "Son satır
    TABLES
      intern                  = gt_intern
    EXCEPTIONS
      inconsistent_parameters = 1
      upload_ole              = 2
      OTHERS                  = 3.
  IF sy-subrc <> 0.
* Implement suitable error handling here
  ENDIF.


  LOOP AT gt_intern INTO gs_intern.
    ASSIGN COMPONENT gs_intern-col OF STRUCTURE gs_itab TO <gfv_value>.    "Gelen veriyi fs'ye aldık
    <gfv_value> = gs_intern-value.                                         "Onuda gs_interne attık
    AT END OF row.                                                         "satır bitince kayıt yap
      APPEND gs_itab TO gt_itab.
    ENDAT.


  ENDLOOP.
