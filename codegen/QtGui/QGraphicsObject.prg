$header

#include "hbclass.ch"

CLASS QGraphicsObject INHERIT QObject,QGraphicsItem

   METHOD grabGesture
   METHOD ungrabGesture

   METHOD onEnabledChanged
   METHOD onOpacityChanged
   METHOD onParentChanged
   METHOD onRotationChanged
   METHOD onScaleChanged
   METHOD onVisibleChanged
   METHOD onXChanged
   METHOD onYChanged
   METHOD onZChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QGraphicsObject>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=void grabGesture ( Qt::GestureType gesture, Qt::GestureFlags flags = Qt::GestureFlags() )
$method=|void|grabGesture|Qt::GestureType,Qt::GestureFlags=Qt::GestureFlags()

$prototype=void ungrabGesture ( Qt::GestureType gesture )
$method=|void|ungrabGesture|Qt::GestureType

#pragma ENDDUMP
