$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QChildEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD added
   METHOD child
   METHOD polished
   METHOD removed

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QChildEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QChildEvent(Type type, QObject * child)
*/
HB_FUNC_STATIC( QCHILDEVENT_NEW )
{
  QChildEvent * o = new QChildEvent ( (QEvent::Type) hb_parni(1), PQOBJECT(2) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
bool added() const
*/
HB_FUNC_STATIC( QCHILDEVENT_ADDED )
{
  QChildEvent * obj = (QChildEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->added () );
  }
}


/*
QObject * child() const
*/
HB_FUNC_STATIC( QCHILDEVENT_CHILD )
{
  QChildEvent * obj = (QChildEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * ptr = obj->child ();
    _qt4xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}


/*
bool polished() const
*/
HB_FUNC_STATIC( QCHILDEVENT_POLISHED )
{
  QChildEvent * obj = (QChildEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->polished () );
  }
}


/*
bool removed() const
*/
HB_FUNC_STATIC( QCHILDEVENT_REMOVED )
{
  QChildEvent * obj = (QChildEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->removed () );
  }
}





#pragma ENDDUMP
