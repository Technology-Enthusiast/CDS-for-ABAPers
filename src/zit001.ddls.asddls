@AbapCatalog.sqlViewName: 'ZIT001_SQL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 't001'
define view ZIT001 as select from zt001 {
    
    bukrs,
    butxt
} 
 