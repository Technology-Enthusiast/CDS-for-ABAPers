@AbapCatalog.sqlViewName: 'ZIPOITEMNOPARAMS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'ZIPOItemNoParam'
define view ZIPOItemNoParam as select from zpoitem
{
  key ebeln                              as pono,
  key ebelp                              as poitem,
      matnr                              as material,
      menge                              as qty,
      meins,
      wrbtr,
waers,
      cast(case meins when 'PC' then 'Pieces' else 'Default'
      end as abap.char( 5 ))             as unitdescription,
      case waers when 'EUR' then 'Euro' else 'Default'
      end                                as currencydescription,
    cast( wrbtr as abap.curr( 20, 3 )) as threedecimal,
      $session.client as client,
      $session.system_date as zdate,
      $session.system_language as zlang,
      $session.user  as zuser
}
