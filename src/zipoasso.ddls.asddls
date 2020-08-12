@AbapCatalog.sqlViewName: 'ZIPOASSOS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'ZIPOAsso'
define view ZIPOAsso as select from ZIPOHDR
association [0..*] to ZIPOItemNoParam as _poitems
    on $projection.ebeln = _poitems.pono {
    
   ZIPOHDR.ebeln,
   ZIPOHDR.werks,
   ZIPOHDR.bukrs,
   _poitems,
   _poitems.pono,
   _poitems.poitem 
}
