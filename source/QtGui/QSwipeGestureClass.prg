/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QSwipeGesture INHERIT QGesture

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD horizontalDirection
   METHOD setSwipeAngle
   METHOD swipeAngle
   METHOD verticalDirection

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSwipeGesture
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QSwipeGesture>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QSWIPEGESTURE_DELETE )
{
  QSwipeGesture * obj = (QSwipeGesture *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
SwipeDirection horizontalDirection () const
*/
HB_FUNC_STATIC( QSWIPEGESTURE_HORIZONTALDIRECTION )
{
  QSwipeGesture * obj = (QSwipeGesture *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->horizontalDirection () );
  }
}

/*
void setSwipeAngle ( qreal value )
*/
HB_FUNC_STATIC( QSWIPEGESTURE_SETSWIPEANGLE )
{
  QSwipeGesture * obj = (QSwipeGesture *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSwipeAngle ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
qreal swipeAngle () const
*/
HB_FUNC_STATIC( QSWIPEGESTURE_SWIPEANGLE )
{
  QSwipeGesture * obj = (QSwipeGesture *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->swipeAngle () );
  }
}

/*
SwipeDirection verticalDirection () const
*/
HB_FUNC_STATIC( QSWIPEGESTURE_VERTICALDIRECTION )
{
  QSwipeGesture * obj = (QSwipeGesture *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->verticalDirection () );
  }
}

#pragma ENDDUMP
