$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QTapGesture INHERIT QGesture

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD position
   METHOD setPosition

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QTapGesture>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
QPointF position () const
*/
HB_FUNC_STATIC( QTAPGESTURE_POSITION )
{
  QTapGesture * obj = (QTapGesture *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->position () );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
void setPosition ( const QPointF & pos )
*/
HB_FUNC_STATIC( QTAPGESTURE_SETPOSITION )
{
  QTapGesture * obj = (QTapGesture *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPosition ( *PQPOINTF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
