*&---------------------------------------------------------------------*
*&  Include           ZKO_PROJECT_14_TOP
*&---------------------------------------------------------------------*
DATA:gs_schuler TYPE z02_schuler,
     gt_schuler TYPE TABLE OF z02_schuler.

TYPES:BEGIN OF gty_sel ,
        kurs_id	     TYPE znummer,
        name         TYPE zname,
        vorname	     TYPE zvorname,
        lekt_nummer	 TYPE zlekt_id,
        lektion_name TYPE zlekt_name,
        kredit       TYPE zkredit,
        punktzahl	   TYPE zpunkt,
      END OF gty_sel.

DATA:gt_sel   TYPE TABLE OF gty_sel,
     gt_sel_1 TYPE TABLE OF gty_sel.



SELECTION-SCREEN BEGIN OF BLOCK radio WITH FRAME TITLE TEXT-003 NO INTERVALS  .
PARAMETERS : pa_sel RADIOBUTTON GROUP rad1 DEFAULT 'X',
             pa_ins RADIOBUTTON GROUP rad1,
             pa_upd RADIOBUTTON GROUP rad1,
             pa_del RADIOBUTTON GROUP rad1.
SELECTION-SCREEN END OF BLOCK radio.

SELECTION-SCREEN BEGIN OF SCREEN  1001 TITLE  TEXT-008 .
SELECTION-SCREEN COMMENT 1(20) TEXT-004 .
PARAMETERS: pa_punkt TYPE  zpunkt.
SELECTION-SCREEN PUSHBUTTON /1(20) gv_text1  USER-COMMAND fc_sel .
SELECTION-SCREEN END OF SCREEN 1001.

SELECTION-SCREEN BEGIN OF SCREEN  1002 TITLE  TEXT-008 .
SELECTION-SCREEN COMMENT 1(20) TEXT-005.
PARAMETERS:pa_id2   TYPE  znummer  OBLIGATORY,
           pa_name2 TYPE  zname OBLIGATORY,
           pa_vnam2 TYPE  zvorname OBLIGATORY,
           pa_knum2 TYPE  zlekt_id OBLIGATORY,
           pa_punk2 TYPE  zpunkt OBLIGATORY.
SELECTION-SCREEN PUSHBUTTON /1(20) gv_text2  USER-COMMAND fc_ins .
SELECTION-SCREEN END OF SCREEN 1002.

SELECTION-SCREEN BEGIN OF SCREEN  1003 TITLE  TEXT-008.
SELECTION-SCREEN COMMENT 1(20) TEXT-006.
PARAMETERS:pa_id3   TYPE  znummer OBLIGATORY,
           pa_name3 TYPE  zname OBLIGATORY,
           pa_vnam3 TYPE  zvorname OBLIGATORY.
SELECTION-SCREEN PUSHBUTTON /1(20) gv_text3  USER-COMMAND fc_upd .

SELECTION-SCREEN END OF SCREEN 1003.

SELECTION-SCREEN BEGIN OF SCREEN  1004 TITLE  TEXT-008.
SELECTION-SCREEN COMMENT 1(20) TEXT-007.
PARAMETERS:pa_id4   TYPE  znummer .
SELECTION-SCREEN PUSHBUTTON /1(20) gv_text4  USER-COMMAND fc_del .

SELECTION-SCREEN END OF SCREEN 1004.
