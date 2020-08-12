*&---------------------------------------------------------------------*
*& Report zrpoitem
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zrpoitem.
data salvtable type ref to cl_salv_table.
select ebeln, werks,bukrs,
\_poitems-pono,
\_poitems[ (1) where poitem = '00010' ]-poitem
from ZIPOAsso
into table @data(podata).
cl_salv_table=>factory(
importing r_salv_table = salvtable
changing t_table = podata ).
salvtable->display( ).
