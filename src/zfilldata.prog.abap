*&---------------------------------------------------------------------*
*& Report zfilldata
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zfilldata.

" Company code master
DELETE FROM zt001.
    INSERT zt001 FROM TABLE @( VALUE #(
        ( BUKRS = 1000 BUTXT = 'Company 1000'  )
    ( BUKRS = 2000 BUTXT = 'Company 2000'  )
    ( BUKRS = 3000 BUTXT = 'Company 3000'  )
    ( BUKRS = 4000 BUTXT = 'Company 4000'  )
    ) ).
" Plant code master
DELETE FROM zt001w.
    INSERT zt001w FROM TABLE @( VALUE #(
     ( WERKS = 'DE01' NAME = 'DE01 Plant'  )
    ( WERKS = 'DE02' NAME = 'DE02 Plant'  )
    ( WERKS = 'DE03' NAME = 'DE03 Plant'  )
    ( WERKS = 'DE04' NAME = 'DE04 Plant'  )

    ) ).
" Material code master
DELETE FROM ZMARA.
    INSERT ZMARA FROM TABLE @( VALUE #(
    ( MATNR = 'MAT1' MAKTX = 'Material 1'  )
    ( MATNR = 'MAT2' MAKTX = 'Material 2'  )
    ( MATNR = 'MAT3' MAKTX = 'Material 3'  )
    ( MATNR = 'MAT4' MAKTX = 'Material 4'  )
    ) ).
"PO hdr data
DELETE FROM zpohdr.
    INSERT zpohdr FROM TABLE @( VALUE #(
    ( EBELN = 1 WERKS = 'DE01' BUKRS = '1000' )
    ( EBELN = 2 WERKS = 'DE01' BUKRS = '1000' )
    ( EBELN = 3 WERKS = 'DE01' BUKRS = '1000' )
    ( EBELN = 4 WERKS = 'DE02' BUKRS = '2000' )
    ( EBELN = 5 WERKS = 'DE02' BUKRS = '2000' )
    ( EBELN = 6 WERKS = 'DE02' BUKRS = '2000' )
    ( EBELN = 7 WERKS = 'DE03' BUKRS = '3000' )
    ( EBELN = 8 WERKS = 'DE03' BUKRS = '3000' )
    ( EBELN = 9 WERKS = 'DE03' BUKRS = '3000' )
    ( EBELN = 10 WERKS = 'DE04' BUKRS = '4000' )
    ( EBELN = 11 WERKS = 'DE04' BUKRS = '4000' )
    ) ).
"PO Item
"PO hdr data
DELETE FROM zpoitem.
    INSERT zpoitem FROM TABLE @( VALUE #(
    ( EBELN = 1 EBELP = 10 MATNR = 'MAT1'  MENGE = 10  MEINS = 'PC' WRBTR = 1000 WAERS = 'EUR' )
   ( EBELN = 1 EBELP = 20 MATNR = 'MAT2'  MENGE = 12  MEINS = 'PC' WRBTR = 2300 WAERS = 'EUR' )
   ( EBELN = 2 EBELP = 10 MATNR = 'MAT1'  MENGE = 23  MEINS = 'PC' WRBTR = 1011 WAERS = 'EUR' )
   ( EBELN = 2 EBELP = 20 MATNR = 'MAT2'  MENGE = 108  MEINS = 'PC' WRBTR = 2100 WAERS = 'EUR' )
   ( EBELN = 3 EBELP = 10 MATNR = 'MAT3'  MENGE = 109  MEINS = 'PC' WRBTR = 2000 WAERS = 'EUR' )
   ( EBELN = 4 EBELP = 10 MATNR = 'MAT3'  MENGE = 101  MEINS = 'PC' WRBTR = 2100 WAERS = 'EUR' )
   ( EBELN = 5 EBELP = 10 MATNR = 'MAT1'  MENGE = 130  MEINS = 'PC' WRBTR = 3100 WAERS = 'EUR' )
   ( EBELN = 5 EBELP = 20 MATNR = 'MAT4'  MENGE = 110  MEINS = 'PC' WRBTR = 4200 WAERS = 'EUR' )
   ( EBELN = 6 EBELP = 10 MATNR = 'MAT1'  MENGE = 121  MEINS = 'PC' WRBTR = 1320 WAERS = 'EUR' )
   ( EBELN = 6 EBELP = 20 MATNR = 'MAT2'  MENGE = 25  MEINS = 'PC' WRBTR = 1545 WAERS = 'EUR' )
   ( EBELN = 7 EBELP = 10 MATNR = 'MAT1'  MENGE = 32  MEINS = 'PC' WRBTR = 1111 WAERS = 'EUR' )
   ( EBELN = 7 EBELP = 20 MATNR = 'MAT3'  MENGE = 23  MEINS = 'PC' WRBTR = 1120 WAERS = 'EUR' )
   ( EBELN = 8 EBELP = 10 MATNR = 'MAT1'  MENGE = 30  MEINS = 'PC' WRBTR = 3121 WAERS = 'EUR' )
   ( EBELN = 8 EBELP = 20 MATNR = 'MAT3'  MENGE = 20  MEINS = 'PC' WRBTR = 3120 WAERS = 'EUR' )
   ( EBELN = 9 EBELP = 10 MATNR = 'MAT1'  MENGE = 44  MEINS = 'PC' WRBTR = 5400 WAERS = 'EUR' )
   ( EBELN = 10 EBELP = 10 MATNR = 'MAT1'  MENGE = 40  MEINS = 'PC' WRBTR = 7560 WAERS = 'EUR' )
   ( EBELN = 11 EBELP = 10 MATNR = 'MAT2'  MENGE = 30  MEINS = 'PC' WRBTR = 6000 WAERS = 'EUR' )
   ( EBELN = 11 EBELP = 20 MATNR = 'MAT1'  MENGE = 20  MEINS = 'PC' WRBTR = 6500 WAERS = 'EUR' )
   ( EBELN = 12 EBELP = 10 MATNR = 'MAT1'  MENGE = 10  MEINS = 'PC' WRBTR = 1400 WAERS = 'EUR' )
   ( EBELN = 12 EBELP = 20 MATNR = 'MAT2'  MENGE = 10  MEINS = 'PC' WRBTR = 1300 WAERS = 'EUR' )

    ) ).
