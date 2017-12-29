/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

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

PROCEDURE destroyObject () CLASS QTouchEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QTouchEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QTOUCHEVENT_DELETE )
{
  QTouchEvent * obj = (QTouchEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
