*&---------------------------------------------------------------------*
*&  Include           ZKO_UEBUNG_07_FRM
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

CLEAR:gs_table.gs_table-id_no   = 748374658344.
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

LOOP AT gt_table INTO gs_table.
  CLEAR gs_id.
  gs_id-id_no = gs_table-id_no.
  APPEND gs_id TO gt_id.

  CLEAR gs_firm.
  gs_firm-firm = gs_table-firm.
  APPEND gs_firm TO gt_firm.

  CLEAR gs_bank.
  gs_bank-bank = gs_table-bank.
  APPEND gs_bank TO gt_bank.
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

  CLEAR gs_fcat.
gs_fcat-fieldname = 'BOX'.
gs_fcat-coltext = 'secim'.
*gs_fcat-col_opt = abap_true.
gs_fcat-outputlen = 2.
APPEND gs_fcat TO gt_fcat.


CLEAR gs_fcat.
gs_fcat-fieldname = 'ID_NO'.
gs_fcat-coltext = 'ID Number'.
*gs_fcat-col_opt = abap_true.
gs_fcat-outputlen = 20.
APPEND gs_fcat TO gt_fcat.

CLEAR gs_fcat.
gs_fcat-fieldname = 'NAME'.
gs_fcat-coltext = 'NAME'.
*gs_fcat-col_opt = abap_true.
gs_fcat-outputlen = 20.
APPEND gs_fcat TO gt_fcat.

CLEAR gs_fcat.
gs_fcat-fieldname = 'SURNAME'.
gs_fcat-coltext = 'SURNAME'.
*gs_fcat-col_opt = abap_true.
gs_fcat-outputlen = 20.
APPEND gs_fcat TO gt_fcat.


LOOP AT gt_firm INTO gs_firm .

  CLEAR gs_fcat.
  gs_fcat-fieldname = gs_firm-firm.
  gs_fcat-coltext = gs_firm-firm.
*  gs_fcat-col_opt = abap_true.
  gs_fcat-outputlen = 20.
  APPEND gs_fcat TO gt_fcat.

ENDLOOP.

LOOP AT gt_bank INTO gs_bank.

  CLEAR gs_fcat.
  gs_fcat-fieldname = gs_bank-bank.
  gs_fcat-coltext = gs_bank-bank.
*  gs_fcat-col_opt = abap_true.
  gs_fcat-outputlen = 20.
  APPEND gs_fcat TO gt_fcat.

ENDLOOP.

LOOP AT gt_fcat INTO gs_fcat.

  CLEAR gs_fcat_new.
gs_fcat_new-fieldname = gs_fcat-fieldname.
gs_fcat_new-seltext_l = gs_fcat-coltext .
gs_fcat_new-outputlen = gs_fcat-outputlen.
 APPEND gs_fcat_new TO gt_fcat_new.

ENDLOOP.

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

LOOP AT gt_id INTO gs_id .

  ASSIGN COMPONENT 'ID_NO' OF STRUCTURE <st_tab> TO <fs_val>.
  <fs_val> = gs_id-id_no.
  "debugta <t_tab>a bakalım,İlk sütunumuzu doldurmuş olduk
  LOOP AT gt_table INTO gs_table WHERE id_no = gs_id-id_no .

    ASSIGN COMPONENT 'NAME' OF STRUCTURE <st_tab> TO <fs_val>.
    <fs_val> = gs_table-name.
    ""debugta <t_tab>a bakalım,ikinci  sütunumuzu da doldurmuş olduk

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

LOOP AT gt_id INTO gs_id .

  ASSIGN COMPONENT 'ID_NO' OF STRUCTURE <st_tab> TO <fs_val>.
  <fs_val> = gs_id-id_no.

  LOOP AT gt_table INTO gs_table WHERE id_no = gs_id-id_no .

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
FORM display .
CALL FUNCTION 'REUSE_ALV_GRID_DISPLAY'
  EXPORTING
    it_fieldcat = gt_fcat_new
  TABLES
    t_outtab    = <t_tab>.

*CALL FUNCTION 'REUSE_ALV_GRID_DISPLAY_LVC'
* EXPORTING
*   IT_FIELDCAT_LVC                   = gt_fcat
*  TABLES
*    t_outtab                          = <t_tab>.
ENDFORM.
