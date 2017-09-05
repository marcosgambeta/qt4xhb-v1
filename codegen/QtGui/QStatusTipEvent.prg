$header

#include "hbclass.ch"

CLASS QStatusTipEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD tip

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QStatusTipEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QStatusTipEvent(const QString &tip)
*/
HB_FUNC_STATIC( QSTATUSTIPEVENT_NEW )
{
  QStatusTipEvent * o = new QStatusTipEvent ( PQSTRING(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
QString tip() const
*/
HB_FUNC_STATIC( QSTATUSTIPEVENT_TIP )
{
  QStatusTipEvent * obj = (QStatusTipEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->tip () );
  }
}

#pragma ENDDUMP
