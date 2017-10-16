$header

#include "hbclass.ch"

CLASS QDragLeaveEvent INHERIT QEvent

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDragLeaveEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDragLeaveEvent ()
*/
HB_FUNC_STATIC( QDRAGLEAVEEVENT_NEW )
{
  QDragLeaveEvent * o = new QDragLeaveEvent ();
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

#pragma ENDDUMP
