$header

#include "hbclass.ch"

CLASS QWhatsThisClickedEvent INHERIT QEvent

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

$prototype=QWhatsThisClickedEvent(const QString &href)
HB_FUNC_STATIC( QWHATSTHISCLICKEDEVENT_NEW )
{
  QWhatsThisClickedEvent * o = new QWhatsThisClickedEvent ( PQSTRING(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

$prototype=QString href() const
$method=|QString|href|

#pragma ENDDUMP
