$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QABSTRACTEVENTDISPATCHER
#endif

CLASS QAbstractEventDispatcher INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD filterEvent
   METHOD flush
   METHOD hasPendingEvents
   METHOD interrupt
   METHOD processEvents
   METHOD registerSocketNotifier
   METHOD registerTimer1
   METHOD registerTimer2
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

#include <QAbstractEventDispatcher>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
bool filterEvent ( void * message )
*/
$method=|bool|filterEvent|void *

/*
virtual void flush () = 0
*/
$virtualMethod=|void|flush|

/*
virtual bool hasPendingEvents () = 0
*/
$virtualMethod=|bool|hasPendingEvents|

/*
virtual void interrupt () = 0
*/
$virtualMethod=|void|interrupt|

/*
virtual bool processEvents ( QEventLoop::ProcessEventsFlags flags ) = 0
*/
$virtualMethod=|bool|processEvents|QEventLoop::ProcessEventsFlags

/*
virtual void registerSocketNotifier ( QSocketNotifier * notifier ) = 0
*/
$virtualMethod=|void|registerSocketNotifier|QSocketNotifier *

/*
int registerTimer ( int interval, QObject * object )
*/
$method=|int|registerTimer,registerTimer1|int,QObject *

/*
virtual void registerTimer ( int timerId, int interval, QObject * object ) = 0
*/
$virtualMethod=|void|registerTimer,registerTimer2|int,int,QObject *

//[1]int registerTimer ( int interval, QObject * object )
//[2]virtual void registerTimer ( int timerId, int interval, QObject * object ) = 0

HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_REGISTERTIMER )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISQOBJECT(2) )
  {
    HB_FUNC_EXEC( QABSTRACTEVENTDISPATCHER_REGISTERTIMER1 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQOBJECT(3) )
  {
    HB_FUNC_EXEC( QABSTRACTEVENTDISPATCHER_REGISTERTIMER2 );
  }
}

/*
virtual void unregisterSocketNotifier ( QSocketNotifier * notifier ) = 0
*/
$virtualMethod=|void|unregisterSocketNotifier|QSocketNotifier *

/*
virtual bool unregisterTimer ( int timerId ) = 0
*/
$virtualMethod=|bool|unregisterTimer|int

/*
virtual bool unregisterTimers ( QObject * object ) = 0
*/
$virtualMethod=|bool|unregisterTimers|QObject *

/*
virtual void wakeUp () = 0
*/
$virtualMethod=|void|wakeUp|

/*
static QAbstractEventDispatcher * instance ( QThread * thread = 0 )
*/
$static Method=|QAbstractEventDispatcher *|instance|QThread *=0

#pragma ENDDUMP
