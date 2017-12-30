$header

#include "hbclass.ch"

CLASS QIconDragEvent INHERIT QEvent

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QIconDragEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QIconDragEvent ()
$constructor=|new|

$deleteMethod

#pragma ENDDUMP
