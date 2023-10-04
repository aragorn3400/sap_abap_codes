*&---------------------------------------------------------------------*
*&  Include           ZKO_PROJECT_03_TOP
*&---------------------------------------------------------------------*


TYPES: BEGIN OF gty_list,
         carrid    TYPE s_carr_id,
         fldate    TYPE s_date,
         planetype TYPE s_planetye,
         price     TYPE s_price,
         carrname  TYPE s_carrname,
         url       TYPE s_carrurl,
         currcode  TYPE s_currcode,
       END OF gty_list.

DATA: gt_list TYPE TABLE OF gty_list,
      gs_list TYPE gty_list.

DATA: gt_fieldcatalog TYPE slis_t_fieldcat_alv,
      gs_fieldcatalog TYPE slis_fieldcat_alv.

DATA: gs_layout TYPE slis_layout_alv.
