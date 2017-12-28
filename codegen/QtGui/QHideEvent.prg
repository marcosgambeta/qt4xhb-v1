$header

#include "hbclass.ch"

CLASS QHideEvent INHERIT QEvent

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QHideEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QHideEvent ()
HB_FUNC_STATIC( QHIDEEVENT_NEW )
{
  QHideEvent * o = new QHideEvent ();
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

#pragma ENDDUMP
