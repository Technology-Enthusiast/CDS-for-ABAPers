*---------------------------------------------------------------------*
*    view related data declarations
*   generation date: 08/20/2020 at 07:14:15
*   view maintenance generator version: #001407#
*---------------------------------------------------------------------*
*...processing: ZPOHDR..........................................*
DATA:  BEGIN OF STATUS_ZPOHDR                        .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZPOHDR                        .
CONTROLS: TCTRL_ZPOHDR
            TYPE TABLEVIEW USING SCREEN '0001'.
*.........table declarations:.................................*
TABLES: *ZPOHDR                        .
TABLES: ZPOHDR                         .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
