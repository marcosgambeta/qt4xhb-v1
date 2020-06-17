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

$beginClassFrom=QEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QWindowStateChangeEvent(Qt::WindowStates aOldState)
$internalConstructor=|new1|Qt::WindowStates

$prototype=QWindowStateChangeEvent(Qt::WindowStates aOldState, bool isOverride)
$internalConstructor=|new2|Qt::WindowStates,bool

/*
[1]QWindowStateChangeEvent(Qt::WindowStates aOldState)
[2]QWindowStateChangeEvent(Qt::WindowStates aOldState, bool isOverride)
*/

HB_FUNC_STATIC( QWINDOWSTATECHANGEEVENT_NEW )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QWindowStateChangeEvent_new1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISLOG(2) )
  {
    QWindowStateChangeEvent_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=Qt::WindowStates oldState() const

$prototypeV2=bool isOverride() const

#pragma ENDDUMP
