$header

#include "hbclass.ch"

CLASS QStyleHintReturnMask INHERIT QStyleHintReturn

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QStyleHintReturnMask>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QStyleHintReturnMask ()
*/
HB_FUNC_STATIC( QSTYLEHINTRETURNMASK_NEW )
{
  QStyleHintReturnMask * o = new QStyleHintReturnMask ();
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

#pragma ENDDUMP
