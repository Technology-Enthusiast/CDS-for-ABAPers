@AbapCatalog.sqlViewName: 'ZIUNIONPO_SQL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'ZIUNIONPO'
define view ZIUNIONPO as select from ZIPOHDR {
    //ZIPOHDR
    ebeln as Field1,
    werks  as Field2,
    bukrs  as Field3
}
union select from ZIPOITEM(p_matnr:'MAT1'){
pono as Field1,
unitdescription as Field2,
cast(poitem as abap.char( 4 )) as Field3
}
