$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPOINT
#endif

CLASS QMoveEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD oldPos
   METHOD pos

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QMoveEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QMoveEvent ( const QPoint & pos, const QPoint & oldPos )
*/
HB_FUNC_STATIC( QMOVEEVENT_NEW )
{
  QMoveEvent * o = new QMoveEvent ( *PQPOINT(1), *PQPOINT(2) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
const QPoint & oldPos () const
*/
HB_FUNC_STATIC( QMOVEEVENT_OLDPOS )
{
  QMoveEvent * obj = (QMoveEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QPoint * ptr = &obj->oldPos ();
    _qt4xhb_createReturnClass ( ptr, "QPOINT" );
  }
}

/*
const QPoint & pos () const
*/
HB_FUNC_STATIC( QMOVEEVENT_POS )
{
  QMoveEvent * obj = (QMoveEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QPoint * ptr = &obj->pos ();
    _qt4xhb_createReturnClass ( ptr, "QPOINT" );
  }
}

#pragma ENDDUMP
