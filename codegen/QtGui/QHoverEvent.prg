$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPOINT
#endif

CLASS QHoverEvent INHERIT QEvent

   METHOD new
   METHOD delete
   METHOD pos
   METHOD oldPos

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QHoverEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QHoverEvent ( Type type, const QPoint & pos, const QPoint & oldPos )
*/
HB_FUNC_STATIC( QHOVEREVENT_NEW )
{
  QHoverEvent * o = new QHoverEvent ( (QEvent::Type) hb_parni(1), *PQPOINT(2), *PQPOINT(3) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
const QPoint & pos () const
*/
HB_FUNC_STATIC( QHOVEREVENT_POS )
{
  QHoverEvent * obj = (QHoverEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QPoint * ptr = &obj->pos ();
    _qt4xhb_createReturnClass ( ptr, "QPOINT" );
  }
}

/*
const QPoint & oldPos () const
*/
HB_FUNC_STATIC( QHOVEREVENT_OLDPOS )
{
  QHoverEvent * obj = (QHoverEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QPoint * ptr = &obj->oldPos ();
    _qt4xhb_createReturnClass ( ptr, "QPOINT" );
  }
}

#pragma ENDDUMP
