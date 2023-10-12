*&---------------------------------------------------------------------*
*&  Include           ZKO_PROJECT_14_E01
*&---------------------------------------------------------------------*
IF pa_sel = 'X'.
    CALL SELECTION-SCREEN 1001.

  ELSEIF pa_ins = 'X'.
    CALL SELECTION-SCREEN 1002.

  ELSEIF pa_upd = 'X'.
    CALL SELECTION-SCREEN 1003.
  ELSEIF pa_del = 'X'.
    CALL SELECTION-SCREEN 1004.

  ENDIF.

AT SELECTION-SCREEN.

  IF sy-dynnr = 1001.
    CASE sy-ucomm.
      WHEN 'FC_SEL'.
        SELECT * FROM z02_schuler
          INNER JOIN z02_lektion
          ON z02_schuler~lekt_nummer EQ z02_lektion~lekt_nummer
          INTO CORRESPONDING FIELDS OF TABLE gt_sel.

        SORT gt_sel BY punktzahl.

        LOOP AT gt_sel INTO DATA(gs_sel).
          IF gs_sel-punktzahl > pa_punkt .
            APPEND gs_sel TO gt_sel_1.

          ENDIF.



        ENDLOOP.

        IF sy-subrc NE 0.
          MESSAGE:'Display  failed' TYPE 'I'.
        ELSE.
          zcl_wko_02=>display_table( it_table = gt_sel_1 ).
        ENDIF.
    ENDCASE.
*    LEAVE TO SCREEN 0.
    CLEAR pa_punkt.
  ENDIF.


  IF sy-dynnr = 1002.
    CASE sy-ucomm.
      WHEN 'FC_INS'.
        CLEAR gs_schuler.
        gs_schuler-kurs_id =  pa_id2   .
        gs_schuler-name    =  pa_name2 .
        gs_schuler-vorname =  pa_vnam2 .
        gs_schuler-lekt_nummer  = pa_knum2 .
        gs_schuler-punktzahl   = pa_punk2 .

        INSERT z02_schuler FROM gs_schuler.

        IF sy-subrc NE 0.
          MESSAGE:'Registration failed' TYPE 'I'.
        ELSE.
          COMMIT WORK AND WAIT.
          MESSAGE:'Registration successful' TYPE 'I' DISPLAY LIKE 'E'.

        ENDIF.
    ENDCASE.
  ENDIF.

  IF sy-dynnr = 1003.
    CASE sy-ucomm.
      WHEN 'FC_UPD'.
        CLEAR gs_schuler.

        UPDATE z02_schuler  SET name = pa_name3 vorname =  pa_vnam3
                             WHERE kurs_id = pa_id3.


        IF sy-subrc NE 0.
          MESSAGE:'Update failed' TYPE 'I'.
        ELSE.
          MESSAGE:'Update successful' TYPE 'I' DISPLAY LIKE 'E'.

        ENDIF.
    ENDCASE.

  ENDIF.

  IF sy-dynnr = 1004.
    CASE sy-ucomm.
      WHEN 'FC_DEL'.
        CLEAR gs_schuler.

        DELETE FROM z02_schuler WHERE kurs_id = pa_id4.



        IF sy-subrc NE 0.
          MESSAGE:'Delete failed' TYPE 'I'.
        ELSE.
          MESSAGE:'Delete successful' TYPE 'I' DISPLAY LIKE 'E'.

        ENDIF.
    ENDCASE.
  ENDIF.
