$header

#include "hbclass.ch"

CLASS QWhatsThisClickedEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD href

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QWhatsThisClickedEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QWhatsThisClickedEvent(const QString &href)
*/
HB_FUNC_STATIC( QWHATSTHISCLICKEDEVENT_NEW )
{
  QWhatsThisClickedEvent * o = new QWhatsThisClickedEvent ( PQSTRING(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
QString href() const
*/
HB_FUNC_STATIC( QWHATSTHISCLICKEDEVENT_HREF )
{
  QWhatsThisClickedEvent * obj = (QWhatsThisClickedEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->href () );
  }
}

#pragma ENDDUMP
