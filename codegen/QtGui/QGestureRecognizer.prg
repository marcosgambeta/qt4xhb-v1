$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QGESTURE
#endif

CLASS QGestureRecognizer

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD create
   METHOD recognize
   METHOD reset
   METHOD registerRecognizer
   METHOD unregisterRecognizer

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGestureRecognizer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QGestureRecognizer>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QGESTURERECOGNIZER_DELETE )
{
  QGestureRecognizer * obj = (QGestureRecognizer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
virtual QGesture * create ( QObject * target )
*/
HB_FUNC_STATIC( QGESTURERECOGNIZER_CREATE )
{
  QGestureRecognizer * obj = (QGestureRecognizer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGesture * ptr = obj->create ( PQOBJECT(1) );
    _qt4xhb_createReturnClass ( ptr, "QGESTURE" );
  }
}

/*
virtual Result recognize ( QGesture * gesture, QObject * watched, QEvent * event ) = 0
*/
HB_FUNC_STATIC( QGESTURERECOGNIZER_RECOGNIZE )
{
  QGestureRecognizer * obj = (QGestureRecognizer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGesture * par1 = (QGesture *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retni( (int) obj->recognize ( par1, PQOBJECT(2), PQEVENT(3) ) );
  }
}

/*
virtual void reset ( QGesture * gesture )
*/
HB_FUNC_STATIC( QGESTURERECOGNIZER_RESET )
{
  QGestureRecognizer * obj = (QGestureRecognizer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGesture * par1 = (QGesture *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->reset ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::GestureType registerRecognizer ( QGestureRecognizer * recognizer )
*/
HB_FUNC_STATIC( QGESTURERECOGNIZER_REGISTERRECOGNIZER )
{
  QGestureRecognizer * par1 = (QGestureRecognizer *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  hb_retni( (int) QGestureRecognizer::registerRecognizer ( par1 ) );
}

/*
void unregisterRecognizer ( Qt::GestureType type )
*/
HB_FUNC_STATIC( QGESTURERECOGNIZER_UNREGISTERRECOGNIZER )
{
  int par1 = hb_parni(1);
  QGestureRecognizer::unregisterRecognizer ( (Qt::GestureType) par1 );
  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP
