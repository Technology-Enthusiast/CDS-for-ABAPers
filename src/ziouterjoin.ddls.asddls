@AbapCatalog.sqlViewName: 'ZIOUTERJOIN_SQ'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'ziouterjoinm'
define view ziouterjoin as select from ZIPOHDR as  hdr
right outer join ZIPOITEM(p_matnr:'MAT1') as item
    on  hdr.ebeln =  item.pono {
   hdr.ebeln,
   hdr.werks,
   item.material,
   item.poitem,
   item.pono 
}
