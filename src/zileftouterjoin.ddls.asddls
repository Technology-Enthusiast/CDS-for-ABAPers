@AbapCatalog.sqlViewName: 'ZILEF_JOIN'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'zileftouterjoin'
define view zileftouterjoin as select from ZIPOHDR as  hdr
left outer to many join ZIPOITEM(p_matnr:'MAT1') as item
    on  hdr.ebeln =  item.pono {
   hdr.ebeln,
   hdr.werks,
   item.material,
   item.poitem 
}
