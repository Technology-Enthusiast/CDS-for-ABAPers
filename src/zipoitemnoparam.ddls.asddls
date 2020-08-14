@AbapCatalog:{sqlViewName: 'ZIPOITEMNOPARAMS',
compiler.compareFilter: true,
preserveKey: true
}
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'ZIPOItemNoParam'
@OData.publish: true
define view ZIPOItemNoParam
  as select from zpoitem
{
      @EndUserText.label:'My Purchase Order'
      key ebeln                              as pono,
      @EndUserText.label:'My Purchase Order Item'
      key ebelp                              as poitem,
      @EndUserText.label:'My Purchase Material'
      matnr                              as material,
      @EndUserText.quickInfo:'My Purchase quantity'
      menge                              as qty,
      meins,
      @Semantics: {          
          amount: {
              currencyCode: 'currencydescription'
          }
      }
      wrbtr,
      
      waers,
      cast(case meins when 'PC' then 'Pieces' else 'Default'
      end as abap.char( 5 ))             as unitdescription,
      @Semantics.currencyCode: true 
      cast(case waers when 'EUR' then 'Euro' else 'Default'
      end as abap.cuky( 5 ))                                as currencydescription,
      cast( wrbtr as abap.curr( 20, 3 )) as threedecimal,
      $session.client                    as client,
      $session.system_date               as zdate,
      $session.system_language           as zlang,
      $session.user                      as zuser
}
