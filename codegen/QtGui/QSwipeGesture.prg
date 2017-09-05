$header

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

$destructor

#pragma BEGINDUMP

#include <QSwipeGesture>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

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
