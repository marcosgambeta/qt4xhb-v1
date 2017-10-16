$header

#include "hbclass.ch"

CLASS QStatusTipEvent INHERIT QEvent

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
$method=|QString|tip|

#pragma ENDDUMP
