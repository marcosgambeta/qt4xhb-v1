$header

#include "hbclass.ch"

CLASS QTimerEvent INHERIT QEvent

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

$prototype=QTimerEvent(int timerId)
$constructor=|new|int

$deleteMethod

$prototype=int timerId() const
$method=|int|timerId|

#pragma ENDDUMP
