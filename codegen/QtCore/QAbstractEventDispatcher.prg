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

PROCEDURE destroyObject () CLASS QAbstractEventDispatcher
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QAbstractEventDispatcher>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"


HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_DELETE )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool filterEvent ( void * message )
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_FILTEREVENT )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    void * par1 = (void *) hb_parptr(1);
    RBOOL( obj->filterEvent ( par1 ) );
  }
}


/*
virtual void flush () = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_FLUSH )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->flush ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool hasPendingEvents () = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_HASPENDINGEVENTS )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->hasPendingEvents () );
  }
}


/*
virtual void interrupt () = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_INTERRUPT )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->interrupt ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool processEvents ( QEventLoop::ProcessEventsFlags flags ) = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_PROCESSEVENTS )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->processEvents ( (QEventLoop::ProcessEventsFlags) hb_parni(1) ) );
  }
}


/*
virtual void registerSocketNotifier ( QSocketNotifier * notifier ) = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_REGISTERSOCKETNOTIFIER )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSocketNotifier * par1 = (QSocketNotifier *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->registerSocketNotifier ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int registerTimer ( int interval, QObject * object )
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_REGISTERTIMER1 )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->registerTimer ( PINT(1), PQOBJECT(2) ) );
  }
}


/*
virtual void registerTimer ( int timerId, int interval, QObject * object ) = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_REGISTERTIMER2 )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->registerTimer ( PINT(1), PINT(2), PQOBJECT(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


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
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_UNREGISTERSOCKETNOTIFIER )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSocketNotifier * par1 = (QSocketNotifier *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->unregisterSocketNotifier ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool unregisterTimer ( int timerId ) = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_UNREGISTERTIMER )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->unregisterTimer ( PINT(1) ) );
  }
}


/*
virtual bool unregisterTimers ( QObject * object ) = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_UNREGISTERTIMERS )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->unregisterTimers ( PQOBJECT(1) ) );
  }
}


/*
virtual void wakeUp () = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_WAKEUP )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->wakeUp ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
QAbstractEventDispatcher * instance ( QThread * thread = 0 )
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_INSTANCE )
{
  QThread * par1 = ISNIL(1)? 0 : (QThread *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QAbstractEventDispatcher * ptr = QAbstractEventDispatcher::instance ( par1 );
  _qt4xhb_createReturnClass ( ptr, "QABSTRACTEVENTDISPATCHER" );
}





#pragma ENDDUMP
