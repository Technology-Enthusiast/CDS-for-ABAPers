@AbapCatalog.sqlViewName: 'ZIINNERJOIN_SQL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'ziinnerjoin'
define view ziinnerjoin as select from ZIPOHDR as  hdr
inner join ZIPOITEM(p_matnr:'MAT2') as item
    on  hdr.ebeln =  item.pono {
   hdr.ebeln,
   hdr.werks,
   item.material,
   item.poitem 
}
