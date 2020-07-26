@AbapCatalog.sqlViewName: 'ZIMARA_SQL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'MARA  CDS1'
define view ZIMARA as select from zmara {
    key matnr as Material, 
    maktx as Description
} 
 