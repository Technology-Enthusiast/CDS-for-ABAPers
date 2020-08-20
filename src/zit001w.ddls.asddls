@AbapCatalog.sqlViewName: 'ZIT001W_SQL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'plant'
define view ZIT001W as select from zt001w {
    //ZT001W
    
    key werks,
    name
} 
 