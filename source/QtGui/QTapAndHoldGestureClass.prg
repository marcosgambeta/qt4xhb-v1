/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QTapAndHoldGesture INHERIT QGesture

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD position
   METHOD setPosition
   METHOD setTimeout
   METHOD timeout

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTapAndHoldGesture
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QTapAndHoldGesture>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QTAPANDHOLDGESTURE_DELETE )
{
  QTapAndHoldGesture * obj = (QTapAndHoldGesture *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QPointF position () const
*/
HB_FUNC_STATIC( QTAPANDHOLDGESTURE_POSITION )
{
  QTapAndHoldGesture * obj = (QTapAndHoldGesture *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->position () );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
void setPosition ( const QPointF & pos )
*/
HB_FUNC_STATIC( QTAPANDHOLDGESTURE_SETPOSITION )
{
  QTapAndHoldGesture * obj = (QTapAndHoldGesture *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPosition ( *PQPOINTF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTimeout ( int msecs )
*/
HB_FUNC_STATIC( QTAPANDHOLDGESTURE_SETTIMEOUT )
{
  QTapAndHoldGesture::setTimeout ( PINT(1) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
int timeout ()
*/
HB_FUNC_STATIC( QTAPANDHOLDGESTURE_TIMEOUT )
{
  RINT( QTapAndHoldGesture::timeout () );
}

#pragma ENDDUMP
