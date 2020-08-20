@AbapCatalog.sqlViewName: 'ZIPOITEMSQ'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'PO Items Basic Interface view.'
define view ZIPOITEMS as   select from zpoitem
{     
    @EndUserText.label: 'My PO' 
      key ebeln                              as pono,     
      key ebelp                              as poitem,
      matnr                              as material,
      @Semantics: {
          
          quantity: {
              unitOfMeasure: 'meins'
          }
          
      }  
     
      menge                              as qty,
      @Semantics.unitOfMeasure: true
      meins,
      @Semantics: {          
          amount: {
              currencyCode: 'waers'
          }
      }
      wrbtr,
      @Semantics.currencyCode: true 
      waers

     
}
