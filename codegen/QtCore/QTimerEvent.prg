$header

#include "hbclass.ch"

CLASS QTimerEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD timerId

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QTimerEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QTimerEvent(int timerId)
*/
HB_FUNC_STATIC( QTIMEREVENT_NEW )
{
  QTimerEvent * o = new QTimerEvent ( PINT(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
int timerId() const
*/
HB_FUNC_STATIC( QTIMEREVENT_TIMERID )
{
  QTimerEvent * obj = (QTimerEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->timerId () );
  }
}





#pragma ENDDUMP
