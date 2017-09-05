$header

#include "hbclass.ch"

CLASS QStyleHintReturnVariant INHERIT QStyleHintReturn

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QStyleHintReturnVariant>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QStyleHintReturnVariant ()
*/
HB_FUNC_STATIC( QSTYLEHINTRETURNVARIANT_NEW )
{
  QStyleHintReturnVariant * o = new QStyleHintReturnVariant ();
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

#pragma ENDDUMP
