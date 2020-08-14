@AbapCatalog.sqlViewName: 'ZIPOHDR_SQL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true 
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'POhdr'
define view ZIPOHDR
  as select from zpohdr
{
  key ebeln,
      werks,
      bukrs
}
