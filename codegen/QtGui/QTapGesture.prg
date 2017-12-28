$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QTapGesture INHERIT QGesture

   METHOD delete
   METHOD position
   METHOD setPosition

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QTapGesture>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

$prototype=QPointF position () const
$method=|QPointF|position|

$prototype=void setPosition ( const QPointF & pos )
$method=|void|setPosition|const QPointF &

#pragma ENDDUMP
