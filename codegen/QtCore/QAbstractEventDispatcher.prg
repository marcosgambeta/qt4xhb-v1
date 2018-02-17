%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QABSTRACTEVENTDISPATCHER
#endif

CLASS QAbstractEventDispatcher INHERIT QObject

   METHOD delete
   METHOD filterEvent
   METHOD flush
   METHOD hasPendingEvents
   METHOD interrupt
   METHOD processEvents
   METHOD registerSocketNotifier
   METHOD registerTimer
   METHOD unregisterSocketNotifier
   METHOD unregisterTimer
   METHOD unregisterTimers
   METHOD wakeUp
   METHOD instance

   METHOD onAboutToBlock
   METHOD onAwake

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=bool filterEvent ( void * message )
$method=|bool|filterEvent|void *

$prototype=virtual void flush () = 0
$virtualMethod=|void|flush|

$prototype=virtual bool hasPendingEvents () = 0
$virtualMethod=|bool|hasPendingEvents|

$prototype=virtual void interrupt () = 0
$virtualMethod=|void|interrupt|

$prototype=virtual bool processEvents ( QEventLoop::ProcessEventsFlags flags ) = 0
$virtualMethod=|bool|processEvents|QEventLoop::ProcessEventsFlags

$prototype=virtual void registerSocketNotifier ( QSocketNotifier * notifier ) = 0
$virtualMethod=|void|registerSocketNotifier|QSocketNotifier *

$prototype=int registerTimer ( int interval, QObject * object )
$internalMethod=|int|registerTimer,registerTimer1|int,QObject *

$prototype=virtual void registerTimer ( int timerId, int interval, QObject * object ) = 0
$internalVirtualMethod=|void|registerTimer,registerTimer2|int,int,QObject *

//[1]int registerTimer ( int interval, QObject * object )
//[2]virtual void registerTimer ( int timerId, int interval, QObject * object ) = 0

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

$prototype=virtual void unregisterSocketNotifier ( QSocketNotifier * notifier ) = 0
$virtualMethod=|void|unregisterSocketNotifier|QSocketNotifier *

$prototype=virtual bool unregisterTimer ( int timerId ) = 0
$virtualMethod=|bool|unregisterTimer|int

$prototype=virtual bool unregisterTimers ( QObject * object ) = 0
$virtualMethod=|bool|unregisterTimers|QObject *

$prototype=virtual void wakeUp () = 0
$virtualMethod=|void|wakeUp|

$prototype=static QAbstractEventDispatcher * instance ( QThread * thread = 0 )
$staticMethod=|QAbstractEventDispatcher *|instance|QThread *=0

#pragma ENDDUMP
