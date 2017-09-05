$header

#include "hbclass.ch"

CLASS QCloseEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QCloseEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QCloseEvent ()
*/
HB_FUNC_STATIC( QCLOSEEVENT_NEW )
{
  QCloseEvent * o = new QCloseEvent ();
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

#pragma ENDDUMP
