$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QWIDGET
#endif

CLASS QTouchEvent INHERIT QInputEvent

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD widget
   METHOD deviceType
   METHOD touchPointStates

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QTouchEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
QWidget *widget() const
*/
HB_FUNC_STATIC( QTOUCHEVENT_WIDGET )
{
  QTouchEvent * obj = (QTouchEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->widget ();
    _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
QTouchEvent::DeviceType deviceType() const
*/
HB_FUNC_STATIC( QTOUCHEVENT_DEVICETYPE )
{
  QTouchEvent * obj = (QTouchEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->deviceType () );
  }
}

/*
Qt::TouchPointStates touchPointStates() const
*/
HB_FUNC_STATIC( QTOUCHEVENT_TOUCHPOINTSTATES )
{
  QTouchEvent * obj = (QTouchEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->touchPointStates () );
  }
}

#pragma ENDDUMP
