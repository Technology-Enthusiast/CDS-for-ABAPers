@AbapCatalog.sqlViewName: 'ZIUNIONPO2_SQL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'demonstrating union all'
define view ziunionpo2  as select from ZIPOHDR {
    //ZIPOHDR
    ebeln as Field1,
    werks  as Field2,
    bukrs  as Field3
} union all select from ZIPOHDR {
    //ZIPOHDR
    ebeln as Field1,
    werks  as Field2,
    bukrs  as Field3
}
