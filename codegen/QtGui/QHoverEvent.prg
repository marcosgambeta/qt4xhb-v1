$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPOINT
#endif

CLASS QHoverEvent INHERIT QEvent

   METHOD new
   METHOD delete
   METHOD pos
   METHOD oldPos

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QHoverEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QHoverEvent ( Type type, const QPoint & pos, const QPoint & oldPos )
$constructor=|new|QEvent::Type,const QPoint &,const QPoint &

$deleteMethod

$prototype=const QPoint & pos () const
$method=|const QPoint &|pos|

$prototype=const QPoint & oldPos () const
$method=|const QPoint &|oldPos|

#pragma ENDDUMP
