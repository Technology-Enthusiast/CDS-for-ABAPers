@AbapCatalog.sqlViewName: 'ZCPOVIEWS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'zcpoview'
@OData.publish: true
@UI.headerInfo:{
typeName: 'Purchase Order',
typeNamePlural: 'Purchase Orders'
}
define view zcpoview as select from ZIFinalPOView {
    //ZIFinalPOView
    @UI:{
    lineItem:[{position:20}],
    selectionField:[{position:20}],
     identification: [{
        position: 10
        
    }]
    }
    @EndUserText.label: 'My PO'
    key ebeln,
    @UI:{
    lineItem:[{position:10}],
    selectionField:[{position:20}],
    identification: [{
        position: 20
        
    }]
    }
    @EndUserText.label: 'My Plant'
    werks,
    @UI:{
    lineItem:[{position:30}]
    }
     @EndUserText.label: 'My Company'
    bukrs,
    @UI:{
    lineItem:[{position:40}]
    }
    @EndUserText.label: 'My Material'
    material,
    /* Associations */
    //ZIFinalPOView
    _company,
    _items,
    _material,
    _plant
}
