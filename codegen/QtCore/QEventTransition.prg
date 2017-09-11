$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QEventTransition INHERIT QAbstractTransition

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD eventSource
   METHOD eventType
   METHOD setEventSource
   METHOD setEventType

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QEventTransition>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QEventTransition(QState * sourceState = 0)
*/
HB_FUNC_STATIC( QEVENTTRANSITION_NEW1 )
{
  QEventTransition * o = new QEventTransition ( OPQSTATE(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QEventTransition(QObject * object, QEvent::Type type, QState * sourceState = 0)
*/
HB_FUNC_STATIC( QEVENTTRANSITION_NEW2 )
{
  QEventTransition * o = new QEventTransition ( PQOBJECT(1), (QEvent::Type) hb_parni(2), OPQSTATE(3,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


//[1]QEventTransition(QState * sourceState = 0)
//[2]QEventTransition(QObject * object, QEvent::Type type, QState * sourceState = 0)

HB_FUNC_STATIC( QEVENTTRANSITION_NEW )
{
  if( ISBETWEEN(0,1) && (ISQSTATE(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QEVENTTRANSITION_NEW1 );
  }
  else if( ISBETWEEN(2,3) && ISQOBJECT(1) && ISNUM(2) && (ISQSTATE(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QEVENTTRANSITION_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QObject * eventSource() const
*/
HB_FUNC_STATIC( QEVENTTRANSITION_EVENTSOURCE )
{
  QEventTransition * obj = (QEventTransition *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * ptr = obj->eventSource ();
    _qt4xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}


/*
QEvent::Type eventType() const
*/
HB_FUNC_STATIC( QEVENTTRANSITION_EVENTTYPE )
{
  QEventTransition * obj = (QEventTransition *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->eventType () );
  }
}


/*
void setEventSource(QObject * object)
*/
HB_FUNC_STATIC( QEVENTTRANSITION_SETEVENTSOURCE )
{
  QEventTransition * obj = (QEventTransition *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setEventSource ( PQOBJECT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setEventType(QEvent::Type type)
*/
HB_FUNC_STATIC( QEVENTTRANSITION_SETEVENTTYPE )
{
  QEventTransition * obj = (QEventTransition *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setEventType ( (QEvent::Type) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
