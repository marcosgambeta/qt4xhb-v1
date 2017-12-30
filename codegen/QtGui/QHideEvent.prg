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
$constructor=|new|

$deleteMethod

#pragma ENDDUMP
