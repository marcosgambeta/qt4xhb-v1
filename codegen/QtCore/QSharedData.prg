%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSharedData ()
$internalConstructor=|new1|

$prototype=QSharedData ( const QSharedData & other )
$internalConstructor=|new2|const QSharedData &

//[1]QSharedData ()
//[2]QSharedData ( const QSharedData & other )

HB_FUNC_STATIC( QSHAREDDATA_NEW )
{
  if( ISNUMPAR(0) )
  {
    QSharedData_new1();
  }
  else if( ISNUMPAR(1) && ISQSHAREDDATA(1) )
  {
    QSharedData_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$extraMethods

#pragma ENDDUMP
