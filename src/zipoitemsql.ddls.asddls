@AbapCatalog.sqlViewName: 'ZIPOITEMSQL_1'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'PO Item'
define view ZIPOITEMSQL

  as select from zpoitem
{
 mandt,
 count(*) as totalRows, // all rows
 count(distinct ebeln) as uniqueebeln, // unique ebeln
 min(wrbtr) as minpoline,
 max(wrbtr) as maxpoline,
 avg(wrbtr) as avgpoline
 
} group by mandt
