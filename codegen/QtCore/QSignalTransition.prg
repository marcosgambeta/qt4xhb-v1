%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractTransition

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSignalTransition(QState *sourceState = 0)
$internalConstructor=|new1|QState *=0

$prototype=QSignalTransition(QObject *sender, const char *signal,QState *sourceState = 0)
$internalConstructor=|new2|QObject *,const char *,QState *=0

/*
[1]QSignalTransition(QState *sourceState = 0)
[2]QSignalTransition(QObject *sender, const char *signal,QState *sourceState = 0)
*/

HB_FUNC_STATIC( QSIGNALTRANSITION_NEW )
{
  if( ISBETWEEN(0,1) && (ISQSTATE(1)||ISNIL(1)) )
  {
    QSignalTransition_new1();
  }
  else if( ISBETWEEN(2,3) && ISQOBJECT(1) && ISCHAR(2) && (ISQSTATE(3)||ISNIL(3)) )
  {
    QSignalTransition_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=QObject * senderObject() const

$prototype=void setSenderObject(QObject *sender)
$method=|void|setSenderObject|QObject *

$prototypeV2=QByteArray signal() const

$prototype=void setSignal(const QByteArray &signal)
$method=|void|setSignal|const QByteArray &

#pragma ENDDUMP
