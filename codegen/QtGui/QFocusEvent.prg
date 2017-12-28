$header

#include "hbclass.ch"

CLASS QFocusEvent INHERIT QEvent

   METHOD new
   METHOD delete
   METHOD gotFocus
   METHOD lostFocus
   METHOD reason

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QFocusEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QFocusEvent ( Type type, Qt::FocusReason reason = Qt::OtherFocusReason )
HB_FUNC_STATIC( QFOCUSEVENT_NEW )
{
  int par2 = ISNIL(2)? (int) Qt::OtherFocusReason : hb_parni(2);
  QFocusEvent * o = new QFocusEvent ( (QEvent::Type) hb_parni(1), (Qt::FocusReason) par2 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

$prototype=bool gotFocus () const
$method=|bool|gotFocus|

$prototype=bool lostFocus () const
$method=|bool|lostFocus|

$prototype=Qt::FocusReason reason () const
$method=|Qt::FocusReason|reason|

#pragma ENDDUMP
