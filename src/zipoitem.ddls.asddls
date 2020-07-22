@AbapCatalog.sqlViewName: 'ZIPOITEM_SQL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'PO Item'
define view ZIPOITEM as select from zpoitem {
  
    key ebeln,
    key ebelp,
    matnr,
    menge,
    meins,
    wrbtr,
    waers
} 
 