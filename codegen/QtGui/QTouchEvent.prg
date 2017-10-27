$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QWIDGET
#endif

CLASS QTouchEvent INHERIT QInputEvent

   METHOD delete
   METHOD widget
   METHOD deviceType
   METHOD touchPointStates

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QTouchEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
QWidget *widget() const
*/
$method=|QWidget *|widget|

/*
QTouchEvent::DeviceType deviceType() const
*/
$method=|QTouchEvent::DeviceType|deviceType|

/*
Qt::TouchPointStates touchPointStates() const
*/
$method=|Qt::TouchPointStates|touchPointStates|

#pragma ENDDUMP
