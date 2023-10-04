*&---------------------------------------------------------------------*
*&  Include           ZKO_UEBUNG_08_FRM
*&---------------------------------------------------------------------*

FORM get_data .

**DATA(gt_table) = VALUE gtt_table( ( id_no = 74837465858 name = 'MERAL' surname = 'YAPRAK' firm = 'DURMAZ_COMPANY' bank = 'AKBANK' )
*  gt_table = VALUE gtt_table( ( id_no = 74837465858 name = 'MERAL' surname = 'YAPRAK' firm = 'DURMAZ_COMPANY' bank = 'AKBANK' )
*                                              ( id_no = 74837465858 name = 'MERAL' surname = 'YAPRAK' firm = 'DURMAZ_COMPANY' bank = 'VAKIFBANK' )
*                                              ( id_no = 74837465866 name = 'HİKMET' surname = 'PAMUK' firm = 'BATMAZ_COMPANY' bank = 'AKBANK' )
*                                              ( id_no = 65578945512 name = 'AYDIN' surname = 'BAŞSIZ' firm = 'GREEK_AIRLINES' bank = 'VAKIFBANK' )
*                                              ( id_no = 54778965123 name = 'ECEM' surname = 'BAYA' firm = 'ABC_COMPANY' bank = 'ZIRAAT_BANK' )
*                                              ( id_no = 75542216622 name = 'UMUT' surname = 'ERKAN' firm = 'MOONSOFT' bank = 'GARANTI_BANK' )
*                                              ( id_no = 74837465831 name = 'UMUT' surname = 'ER' firm = 'STARSOFT' bank = 'AKBANK' )
*                                              ( id_no = 74837465831 name = 'UMUT' surname = 'ER' firm = 'STARSOFT' bank = 'XYZ_BANK' ) ).


*  LOOP AT gt_table ASSIGNING FIELD-SYMBOL(<gs_table>) .
*    APPEND INITIAL LINE TO gt_id ASSIGNING FIELD-SYMBOL(<gs_id>).
*    <gs_id>-id_no = <gs_table>-id_no.
*
*    APPEND INITIAL LINE TO gt_firm ASSIGNING FIELD-SYMBOL(<gs_firm>).
*    <gs_firm>-firm = <gs_table>-firm.
*
*    APPEND INITIAL LINE TO gt_bank ASSIGNING FIELD-SYMBOL(<gs_bank>).
*    <gs_bank>-bank = <gs_table>-bank.
*  ENDLOOP.



*  SORT gt_id ASCENDING BY id_no.
*  DELETE ADJACENT DUPLICATES FROM gt_id.
*
*  SORT gt_firm ASCENDING BY firm.
*  DELETE ADJACENT DUPLICATES FROM gt_firm.
*
*  SORT gt_bank ASCENDING BY bank.
*  DELETE ADJACENT DUPLICATES FROM gt_bank.


CLEAR gs_table.
gs_table-id_no = 74837465858.
gs_table-name = 'MERAL'.
gs_table-surname = 'YAPRAK'.
gs_table-firm = 'DURMAZ_HOLDING'.
gs_table-bank = 'AKBANK'.
APPEND gs_table TO gt_table.

CLEAR gs_table.
gs_table-id_no = 74837465858.
gs_table-name = 'MERAL'.
gs_table-surname = 'YAPRAK'.
gs_table-firm = 'DURMAZ_HOLDING'.
gs_table-bank = 'VAKIFBANK'.
APPEND gs_table TO gt_table.

CLEAR gs_table.
gs_table-id_no = 74837465866.
gs_table-name = 'HİKMET'.
gs_table-surname = 'PAMUK'.
gs_table-firm = 'BATMAZ_HOLDING'.
gs_table-bank = 'AKBANK'.
APPEND gs_table TO gt_table.

CLEAR gs_table.
gs_table-id_no = 65578945512.
gs_table-name = 'AYDIN '.
gs_table-surname = 'BAŞSIZ'.
gs_table-firm = 'GREEK_AIRLINES'.
gs_table-bank = 'VAKIFBANK'.
APPEND gs_table TO gt_table.

CLEAR gs_table.
gs_table-id_no = 54778965123.
gs_table-name = 'ECEM'.
gs_table-surname = 'BAYA'.
gs_table-firm = 'ABC_HOLDING'.
gs_table-bank = 'ZIRAAT_BANK'.
APPEND gs_table TO gt_table.

CLEAR gs_table.
gs_table-id_no = 75542216622.
gs_table-name = 'UMUT'.
gs_table-surname = 'ERKAN'.
gs_table-firm = 'MOONSOFT'.
gs_table-bank = 'GARANTI_BANK'.
APPEND gs_table TO gt_table.

CLEAR: gs_table.
gs_table-id_no   = 74837465831.
gs_table-name     = 'UMUT'.
gs_table-surname  = 'ER'.
gs_table-firm = 'STARSOFT'.
gs_table-bank  = 'AKBANK'.
APPEND gs_table TO gt_table.

CLEAR: gs_table.
gs_table-id_no   = 74837465831.
gs_table-name     = 'UMUT'.
gs_table-surname  = 'ER'.
gs_table-firm = 'STARSOFT'.
gs_table-bank  = 'XYZ_BANK'.
APPEND gs_table TO gt_table.

CLEAR: gs_table.
gs_table-id_no   = 74837465832.
gs_table-name     = 'AYDIN'.
gs_table-surname  = 'BAŞLI'.
gs_table-firm = 'TURKISH_AIRLINES'.
gs_table-bank  = 'GARANTI_BANK'.
APPEND gs_table TO gt_table.

CLEAR: gs_table.
gs_table-id_no   = 74837465833.
gs_table-name     = 'ECEM'.
gs_table-surname  = 'KOÇER'.
gs_table-firm = 'PEGASUS_AIRLINES'.
gs_table-bank  = 'YAPI_KREDI_BANK'.
APPEND gs_table TO gt_table.

CLEAR: gs_table.
gs_table-id_no   = 74837465834.
gs_table-name     = 'SADİYE'.
gs_table-surname  = 'ÜLKER'.
gs_table-firm = 'YILDIZ_HOLDING'.
gs_table-bank  = 'VAKIFBANK'.
APPEND gs_table TO gt_table.

CLEAR:gs_table.
gs_table-id_no   = 74837465835.
gs_table-name     = 'ERKAN'.
gs_table-surname  = 'SATILMIŞ'.
gs_table-firm = 'DOGUS_HOLDING'.
gs_table-bank  = 'ZIRAAT_BANK'.
APPEND gs_table TO gt_table.

CLEAR: gs_table.
gs_table-id_no   = 74837465831.
gs_table-name  = 'UMUT'.
gs_table-surname  = 'ER'.
gs_table-firm = 'STARSOFT'.
gs_table-bank  = 'GARANTI_BANK'.
APPEND gs_table TO gt_table.

CLEAR: gs_table.
gs_table-id_no   = 74837465832.
gs_table-name     = 'AYDIN'.
gs_table-surname  = 'BAŞLI'.
gs_table-firm = 'TURKISH_AIRLINES'.
gs_table-bank  = 'YAPI_KREDI_BANK'.
APPEND gs_table TO gt_table.

CLEAR: gs_table.
gs_table-id_no   = 74837465833.
gs_table-name     = 'ECEM'.
gs_table-surname  = 'KOÇER'.
gs_table-firm = 'PEGASUS_AIRLINES'.
gs_table-bank  = 'VAKIFBANK'.
APPEND gs_table TO gt_table.

CLEAR: gs_table.
gs_table-id_no   = 74837465834.
gs_table-name     = 'SADİYE'.
gs_table-surname  = 'ÜLKER'.
gs_table-firm = 'YILDIZ_HOLDING'.
gs_table-bank  = 'ZIRAAT_BANK'.
APPEND gs_table TO gt_table.

CLEAR: gs_table.
gs_table-id_no   = 74837465835.
gs_table-name     = 'ERKAN'.
gs_table-surname  = 'SATILMIŞ'.
gs_table-firm = 'DOGUS_HOLDING'.
gs_table-bank  = 'AKBANK'.
APPEND gs_table TO gt_table.

CLEAR: gs_table.
gs_table-id_no   = 74837465841.
gs_table-name     = 'AHMET'.
gs_table-surname  = 'ÇELİK'.
gs_table-firm = 'STARSOFT'.
gs_table-bank  = 'YAPI_KREDI_BANK'.
APPEND gs_table TO gt_table.

CLEAR: gs_table.
gs_table-id_no   = 74837465842.
gs_table-name     = 'KEMAL'.
gs_table-surname  = 'ZORLU'.
gs_table-firm = 'TURKISH_AIRLINES'.
gs_table-bank  = 'VAKIFBANK'.
APPEND gs_table TO gt_table.

CLEAR: gs_table.
gs_table-id_no   = 748374658343.
gs_table-name     = 'MERVE'.
gs_table-surname  = 'BAHAR'.
gs_table-firm = 'PEGASUS_AIRLINES'.
gs_table-bank  = 'ZIRAAT_BANK'.
APPEND gs_table TO gt_table.

CLEAR:gs_table.
gs_table-id_no   = 748374658344.
gs_table-name     = 'MERAL'.
gs_table-surname  = 'TOPRAK'.
gs_table-firm = 'YILDIZ_HOLDING'.
gs_table-bank  = 'AKBANK'.
APPEND gs_table TO gt_table.

CLEAR: gs_table.
gs_table-id_no   = 74837465845.
gs_table-name     = 'HİKMET'.
gs_table-surname  = 'KAYA'.
gs_table-firm = 'DOGUS_HOLDING'.
gs_table-bank  = 'GARANTI_BANK'.
APPEND gs_table TO gt_table.

CLEAR: gs_table.
gs_table-id_no   = 32393066912.
gs_table-name     = 'KEMAL'.
gs_table-surname  = 'HALIS'.
gs_table-firm = 'ANADOLU_JET'.
gs_table-bank  = 'HALKBANK'.
APPEND gs_table TO gt_table.

CLEAR: gs_table.
gs_table-id_no   = 73837678889.
gs_table-name     = 'ZEHRA'.
gs_table-surname  = 'KARA'.
gs_table-firm = 'CONWAY'.
gs_table-bank  = 'MNG_BANK'.
APPEND gs_table TO gt_table.

CLEAR: gs_table.
gs_table-id_no = 73837678950.
gs_table-name     = 'MURAT'.
gs_table-surname  = 'KOYUN'.
gs_table-firm = 'CONWAY'.
gs_table-bank  = 'STARSOFT_BANK'.
APPEND gs_table TO gt_table.
CLEAR: gs_table.


LOOP AT gt_table ASSIGNING FIELD-SYMBOL(<gs_table>) .
    APPEND INITIAL LINE TO gt_id ASSIGNING FIELD-SYMBOL(<gs_id>).
    <gs_id>-id_no = <gs_table>-id_no.

    APPEND INITIAL LINE TO gt_firm ASSIGNING FIELD-SYMBOL(<gs_firm>).
    <gs_firm>-firm = <gs_table>-firm.

    APPEND INITIAL LINE TO gt_bank ASSIGNING FIELD-SYMBOL(<gs_bank>).
    <gs_bank>-bank = <gs_table>-bank.
  ENDLOOP.



SORT gt_id ASCENDING BY id_no.
DELETE ADJACENT DUPLICATES FROM gt_id.

SORT gt_firm ASCENDING BY firm.
DELETE ADJACENT DUPLICATES FROM gt_firm.

SORT gt_bank ASCENDING BY bank.
DELETE ADJACENT DUPLICATES FROM gt_bank.

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



*DATA(gt_fcat) = VALUE lvc_t_fcat( ( fieldname  = 'BOX' coltext = 'secim' outputlen = 2 )
    gt_fcat = VALUE lvc_t_fcat( ( fieldname  = 'BOX' coltext = 'secim' outputlen = 2 )
                                      ( fieldname  = 'ID_NO' coltext = 'ID Number' outputlen = 20 )
                                      ( fieldname  = 'NAME' coltext = 'NAME' outputlen = 20 )
                                      ( fieldname  = 'SURNAME' coltext = 'SURNAME' outputlen = 20 ) ).

    gt_fcat = VALUE #( BASE gt_fcat FOR gs_firm IN gt_firm ( fieldname  = gs_firm-firm
                                                             coltext    = gs_firm-firm
                                                             outputlen  = 20 ) ).

    gt_fcat = VALUE #( BASE gt_fcat FOR gs_bank IN gt_bank ( fieldname  = gs_bank-bank
                                                             coltext    = gs_bank-bank
                                                             outputlen  = 20 ) ).


ENDFORM.
*&---------------------------------------------------------------------*
*& Form CREATE_DYN_TABLE
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
FORM create_dyn_table .
  CALL METHOD cl_alv_table_create=>create_dynamic_table
    EXPORTING
      it_fieldcatalog = gt_fcat
    IMPORTING
      ep_table        = dt_1.

  ASSIGN dt_1->* TO <t_tab>.

  CREATE DATA ds_1 LIKE LINE OF <t_tab>.

  ASSIGN ds_1->* TO <st_tab>.

  LOOP AT gt_id INTO DATA(gs_id) .

    ASSIGN COMPONENT 'ID_NO' OF STRUCTURE <st_tab> TO <fs_val>.
    <fs_val> = gs_id-id_no.

*  LOOP AT gt_table INTO DATA( gs_table WHERE id_no = gs_id-id_no ).
    LOOP AT gt_table INTO  gs_table WHERE id_no = gs_id-id_no .

      ASSIGN COMPONENT 'NAME' OF STRUCTURE <st_tab> TO <fs_val>.
      <fs_val> = gs_table-name.

      ASSIGN COMPONENT 'SURNAME' OF STRUCTURE <st_tab> TO <fs_val>.
      <fs_val> = gs_table-surname.


      ASSIGN COMPONENT gs_table-firm OF STRUCTURE <st_tab> TO <fs_val>.
      <fs_val> = 'Works in this firm'.


      ASSIGN COMPONENT gs_table-bank OF STRUCTURE <st_tab> TO <fs_val>.
      <fs_val> ='Works with this bank'.


    ENDLOOP.

    ASSIGN COMPONENT 'BOX' OF STRUCTURE <st_tab> TO <fs_val>.
    <fs_val> = lv_number + 1.
    lv_number = lv_number + 1.

    APPEND <st_tab> TO <t_tab>.
    CLEAR <st_tab>.

  ENDLOOP.

ENDFORM.
*&---------------------------------------------------------------------*
*& Form FILL_DYN_TABLE
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
FORM fill_dyn_table .
  ASSIGN dt_1->* TO <t_tab>.

  CREATE DATA ds_1 LIKE LINE OF <t_tab>.

  ASSIGN ds_1->* TO <st_tab>.

  LOOP AT gt_id INTO DATA(gs_id) .

    ASSIGN COMPONENT 'ID_NO' OF STRUCTURE <st_tab> TO <fs_val>.
    <fs_val> = gs_id-id_no.

    LOOP AT gt_table INTO DATA(gs_table) WHERE id_no = gs_id-id_no .

      ASSIGN COMPONENT 'NAME' OF STRUCTURE <st_tab> TO <fs_val>.
      <fs_val> = gs_table-name.


      ASSIGN COMPONENT 'SURNAME' OF STRUCTURE <st_tab> TO <fs_val>.
      <fs_val> = gs_table-surname.


      ASSIGN COMPONENT gs_table-firm OF STRUCTURE <st_tab> TO <fs_val>.
      <fs_val> = 'Works in this firm'.


      ASSIGN COMPONENT gs_table-bank OF STRUCTURE <st_tab> TO <fs_val>.
      <fs_val> ='Works with this bank'.


    ENDLOOP.

    ASSIGN COMPONENT 'BOX' OF STRUCTURE <st_tab> TO <fs_val>.
    <fs_val> = lv_number + 1.
    lv_number = lv_number + 1.

    APPEND <st_tab> TO <t_tab>.
    CLEAR <st_tab>.

  ENDLOOP.


ENDFORM.

*&---------------------------------------------------------------------*
*& Form DISPLAY
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*

FORM display.
  CALL FUNCTION 'REUSE_ALV_GRID_DISPLAY_LVC'
    EXPORTING
      it_fieldcat_lvc = gt_fcat
    TABLES
      t_outtab        = <t_tab>.
ENDFORM.
