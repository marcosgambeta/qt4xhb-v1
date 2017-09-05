$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QSizeGrip INHERIT QWidget

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD setVisible
   METHOD sizeHint

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QSizeGrip>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QSizeGrip ( QWidget * parent )
*/
HB_FUNC_STATIC( QSIZEGRIP_NEW )
{
  QSizeGrip * o = new QSizeGrip ( PQWIDGET(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
virtual void setVisible ( bool visible )
*/
HB_FUNC_STATIC( QSIZEGRIP_SETVISIBLE )
{
  QSizeGrip * obj = (QSizeGrip *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setVisible ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QSIZEGRIP_SIZEHINT )
{
  QSizeGrip * obj = (QSizeGrip *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

#pragma ENDDUMP
