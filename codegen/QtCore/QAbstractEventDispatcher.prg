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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=bool filterEvent( void * message )

$prototypeV2=virtual void flush() = 0

$prototypeV2=virtual bool hasPendingEvents() = 0

$prototypeV2=virtual void interrupt() = 0

$prototypeV2=virtual bool processEvents( QEventLoop::ProcessEventsFlags flags ) = 0

$prototypeV2=virtual void registerSocketNotifier( QSocketNotifier * notifier ) = 0

$prototype=int registerTimer ( int interval, QObject * object )
$internalMethod=|int|registerTimer,registerTimer1|int,QObject *

$prototype=virtual void registerTimer ( int timerId, int interval, QObject * object ) = 0
$internalVirtualMethod=|void|registerTimer,registerTimer2|int,int,QObject *

/*
[1]int registerTimer ( int interval, QObject * object )
[2]virtual void registerTimer ( int timerId, int interval, QObject * object ) = 0
*/

HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_REGISTERTIMER )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISQOBJECT(2) )
  {
    QAbstractEventDispatcher_registerTimer1();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQOBJECT(3) )
  {
    QAbstractEventDispatcher_registerTimer2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=registerTimer

$prototypeV2=virtual void unregisterSocketNotifier( QSocketNotifier * notifier ) = 0

$prototypeV2=virtual bool unregisterTimer( int timerId ) = 0

$prototypeV2=virtual bool unregisterTimers( QObject * object ) = 0

$prototypeV2=virtual void wakeUp() = 0

$prototype=static QAbstractEventDispatcher * instance ( QThread * thread = 0 )
$staticMethod=|QAbstractEventDispatcher *|instance|QThread *=0

$beginSignals
$signal=|aboutToBlock()
$signal=|awake()
$endSignals

#pragma ENDDUMP
