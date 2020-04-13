%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QPrinterInfo ()
$internalConstructor=|new1|

$prototype=QPrinterInfo ( const QPrinterInfo & src )
$internalConstructor=|new2|const QPrinterInfo &

$prototype=QPrinterInfo ( const QPrinter & printer )
$internalConstructor=|new3|const QPrinter &

/*
[1]QPrinterInfo ()
[2]QPrinterInfo ( const QPrinterInfo & src )
[3]QPrinterInfo ( const QPrinter & printer )
*/

HB_FUNC_STATIC( QPRINTERINFO_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPrinterInfo_new1();
  }
  else if( ISNUMPAR(1) && ISQPRINTERINFO(1) )
  {
    QPrinterInfo_new2();
  }
  else if( ISNUMPAR(1) && ISQPRINTER(1) )
  {
    QPrinterInfo_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototype=bool isDefault () const
$method=|bool|isDefault|

$prototype=bool isNull () const
$method=|bool|isNull|

$prototype=QString printerName () const
$method=|QString|printerName|

$prototype=QList<QPrinter::PaperSize> supportedPaperSizes () const
$method=|QList<QPrinter::PaperSize>|supportedPaperSizes|

$prototype=QList<QPrinterInfo> availablePrinters ()
$method=|QList<QPrinterInfo>|availablePrinters|

$prototype=static QPrinterInfo defaultPrinter ()
$staticMethod=|QPrinterInfo|defaultPrinter|

$extraMethods

#pragma ENDDUMP
