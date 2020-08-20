@AbapCatalog.sqlViewName: 'ZIFINALPOVIEWS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'ZIFinalPOView'
define view ZIFinalPOView as select from ZIPOHDR as hdr
association [1..*] to ZIPOITEMS as _items
    on $projection.ebeln = _items.pono 
association [1..1] to ZIT001 as _company
    on $projection.bukrs = _company.bukrs    
association [1..1] to ZIT001W as _plant
    on $projection.werks = _plant.werks     
association [1..1] to ZIMARA as _material
    on $projection.material = _material.Material        
    {
    //hdr
    key ebeln,
    werks,
    bukrs,
    _items.material as material,
    _items,
    _company,
    _plant,
    _material
  
}
