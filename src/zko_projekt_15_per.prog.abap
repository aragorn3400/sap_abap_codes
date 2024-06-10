*&---------------------------------------------------------------------*
*&  Include           ZKO_PROJEKT_14_PER
*&---------------------------------------------------------------------*

 PERFORM bdc_dynpro      USING 'Z02_SCHULER' '1000'.
    PERFORM bdc_field       USING 'BDC_CURSOR'
                                  'PA_INS'.
    PERFORM bdc_field       USING 'BDC_OKCODE'
                                  '=ONLI'.
    PERFORM bdc_field       USING 'PA_SEL'
                                  ' '.
    PERFORM bdc_field       USING 'PA_INS'
                                  'X'.
      LOOP AT gt_schuler INTO gs_schuler.

    PERFORM bdc_dynpro      USING 'Z02_SCHULER' '1002'.
    PERFORM bdc_field       USING 'BDC_CURSOR'
                                  'PA_PUNK2'.
    PERFORM bdc_field       USING 'BDC_OKCODE'
                                  '=FC_INS'.
    PERFORM bdc_field       USING 'PA_ID2'
                                  gs_schuler-kurs_id.
    PERFORM bdc_field       USING 'PA_NAME2'
                                  gs_schuler-name.
    PERFORM bdc_field       USING 'PA_VNAM2'
                                  gs_schuler-vorname.
    PERFORM bdc_field       USING 'PA_KNUM2'
                                  gs_schuler-lekt_nummer.
    PERFORM bdc_field       USING 'PA_PUNK2'
                                  gs_schuler-punktzahl.


  ENDLOOP.

CALL TRANSACTION 'Z02_SCHULER' WITH AUTHORITY-CHECK USING gt_bdcdata
                          MODE   'N'
                          UPDATE 'A'
                          MESSAGES INTO gt_messtab.
