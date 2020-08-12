@AbapCatalog.sqlViewName: 'ZIASSOBVIEWS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'ziassobview'
define view ziassobview as select from ZIPOAsso {
    ebeln,
    werks,
    bukrs,
    ZIPOAsso._poitems[1:pono='        1'].pono
}
