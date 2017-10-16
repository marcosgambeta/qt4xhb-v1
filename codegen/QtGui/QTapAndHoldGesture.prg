$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QTapAndHoldGesture INHERIT QGesture

   METHOD delete
   METHOD position
   METHOD setPosition
   METHOD setTimeout
   METHOD timeout

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QTapAndHoldGesture>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
QPointF position () const
*/
$method=|QPointF|position|

/*
void setPosition ( const QPointF & pos )
*/
$method=|void|setPosition|const QPointF &

/*
static void setTimeout ( int msecs )
*/
$staticMethod=|void|setTimeout|int

/*
static int timeout ()
*/
$staticMethod=|int|timeout|

#pragma ENDDUMP
