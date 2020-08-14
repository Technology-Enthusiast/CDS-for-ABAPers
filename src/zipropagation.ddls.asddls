@AbapCatalog.sqlViewName: 'ZIPROPAGATIONS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'ZIPropagation'
@OData.publish: true
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view ZIPropagation as select from ZIPOItemNoParam {
    //ZIPOItemNoParam
    @EndUserText.label:'Mine Purchase Order'
    key pono,
    key poitem,
    material, 
    qty,
    meins,
    wrbtr,
    waers,
    unitdescription,
    currencydescription,
    threedecimal,
    client,
    zdate,
    zlang,
    zuser
}
