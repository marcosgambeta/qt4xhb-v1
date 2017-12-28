$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QWIDGET
#endif

CLASS QGraphicsSceneEvent INHERIT QEvent

   METHOD delete
   METHOD widget

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QGraphicsSceneEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

$prototype=QWidget * widget () const
$method=|QWidget *|widget|

#pragma ENDDUMP
